#ifndef __SQLEXECUTETHREAD_H__
#define __SQLEXECUTETHREAD_H__

#include <cassert>
#include <stdexcept>
#include <thread>
#include <condition_variable>
#include <mutex>
#include <list>
#include <vector>
#include <string>
#include "MysqlConnect.h"

namespace ws {

    class Statement;

    using MysqlAsyncCallback=std::function<void (Statement* sqlresult , int result,void *userdata )>;
    using POSTFUNCTION=std::function<void (std::function<void()>) > ;

    class ExceptionChannelClosed : public std::logic_error {
    public:
        ExceptionChannelClosed() : std::logic_error("channel closed") {}

        ~ExceptionChannelClosed() {}
    };

    struct asyncTask{
        MysqlAsyncCallback callback;
        Statement * stmt;
        std::string mysqlstr;
        void * user_data;
    };
    template<typename DataType>
    class Channel {
    public:
        Channel(size_t size = 100) :
                m_open(true) {
            assert(size > 1);
        }

        ~Channel() {
            m_buffer.clear();
        }

        inline void close() {
            m_open = false;
            m_condition.notify_all();
        }

        inline bool closed() {
            return !m_open;
        }

        inline bool empty() {
            return m_buffer.empty();
        }

        inline bool full() {
            return false;
        }

        /*
            push data into buffer
        */
        Channel &operator<<(const DataType &data) {
            if (!m_open) {
                throw ExceptionChannelClosed();
            }
            {
                std::unique_lock<std::mutex> buf(m_mutex);
                m_buffer.push_back(data);
            }
            m_condition.notify_one();
            return *this;
        }

        /*
            pop data from buffer
        */
        Channel &operator>>(DataType &data) {
            {
                std::unique_lock<std::mutex> buf(m_mutex);
                while (m_buffer.empty() && m_open) {
                    m_condition.wait(buf);
                }
                if (!m_open && m_buffer.empty()) {
                    throw ExceptionChannelClosed();
                }

                data = m_buffer.front();
                m_buffer.pop_front();
            }
            m_condition.notify_one();
            return *this;
        }

    private:
        Channel(const Channel &) {}

        volatile bool m_open;
        std::list<DataType> m_buffer;
        std::mutex m_mutex;
        std::condition_variable m_condition;
    };
    class MysqlExecuteThread
        {
            Channel<asyncTask>& toThread_;
            Channel<asyncTask>&  tomain_;
            std::thread * execute_thread_= nullptr;
            bool can_runing_=true;
            POSTFUNCTION  post_message_;
            MysqlConnect * mysql;
            MysqlInitParam init;
        public:
            MysqlExecuteThread(Channel<asyncTask>& toThread,Channel<asyncTask>& toMain,const POSTFUNCTION & postFun,const MysqlInitParam& param):
                    toThread_(toThread),tomain_(toMain),post_message_(postFun),init(param)
            {
                post_message_([](){});
            }
            void run();
            void stop()
            {
                can_runing_ = false;
            }
            void start()
            {
                execute_thread_=new std::thread(&MysqlExecuteThread::run,this);
            }
            ~MysqlExecuteThread()
            {
                stop();
                execute_thread_->join();
                delete execute_thread_;
            }
    };
    class MysqlExecutePool
    {
        int max_num;
        Channel<asyncTask> toThread_;
        Channel<asyncTask>  toMain_;
        std::vector<MysqlExecuteThread *> thread_pool_;
        POSTFUNCTION  post_message_;
    public:
        MysqlExecutePool(int num,const POSTFUNCTION&  post,const MysqlInitParam& param):max_num(num),post_message_(post)
        {
            for (int i = 0; i <max_num ; ++i) {
                thread_pool_.push_back(new MysqlExecuteThread(toThread_,toMain_,post_message_,param));
            }
        }
        void Start()
        {
            for (int i = 0; i < thread_pool_.size(); ++i) {
                thread_pool_[i]->start();
            }
        }
        void addTask(const asyncTask & asyncTask1)
        {
            toThread_<<asyncTask1;
        }

    };
};

#endif
