//
// Created by verpas on 2017/5/24.
//

#ifndef MYSQL_TEST_MYSQLPOOL_H
#define MYSQL_TEST_MYSQLPOOL_H

#include "Statement.h"
#include "DatabaseException.h"
#include"SqlExecuteThread.h"
#include <vector>
#include <string>
#include <queue>
#include <functional>
#include <map>

#include <tuple>
#include <set>
#include <queue>
static std::mutex g_mutex_;
namespace ws
{

#define MysqlRunPool_Function_begin() std::unique_lock<std::mutex> buf(mutex_);
    class MysqlRunPool
    {


        std::function<void (std::function<void()>)> post_message_fun_;
        int max_num_;
        int min_num_;
        std::queue<MysqlConnect *> unuse_pool_;
        std::set<MysqlConnect * > use_connect;
        MysqlInitParam param_;
        POSTFUNCTION post_;
        std::mutex mutex_;
        int reconnct_time_=3;
        MysqlExecutePool thread_pool_;
    public:
        MysqlRunPool(const MysqlInitParam & init,std::function<void (std::function<void()>)> postMessage,int max=10,int min=1,int run_num=5):
                post_(postMessage),param_(init),max_num_(max),min_num_(min),reconnct_time_(init.reconnect),thread_pool_(run_num,postMessage,init)
        {

        }
        int init()
        {
            MysqlConnect *buffer;
            for (int i = 0; i < max_num_; ++i) {
                buffer= nullptr;
                int err = MysqlConnect::CreateMysqlConnect(param_,buffer);
                if(err!=0)
                {
                    clear();
                    if(buffer != nullptr)
                        delete buffer;
                    return err;
                }
                unuse_pool_.push(buffer);
            }
            thread_pool_.Start();
        }
        int clear()
        {
            MysqlConnect*  buff_db= nullptr;
            while(!unuse_pool_.empty())
            {
                buff_db= unuse_pool_.front();
                unuse_pool_.pop();
                delete buff_db;
            }
            for (auto Iter=use_connect.begin();Iter!= use_connect.end();++Iter) {
                if(*Iter)
                    delete *Iter;

            }
        }
        MysqlConnect * GetNextConnect()
        {
            MysqlConnect*  buff_db= nullptr;
            {

                if(unuse_pool_.empty())
                    return nullptr;
                buff_db= unuse_pool_.front();
                unuse_pool_.pop();
                use_connect.insert(buff_db);
            }
            return buff_db;
        }
        void eraseStatment(Statement * stmt)
        {
            if(stmt== nullptr)
                return ;

            auto Iter = use_connect.find(stmt->_db);
            if(Iter!=use_connect.end())
            {
                use_connect.erase(Iter);
                unuse_pool_.push(*Iter);
            }
            {
                MysqlRunPool_Function_begin();
                delete stmt;
            }

        }
        bool excecute(const std::string&sql , Statement *& stmt)
        {
            MysqlRunPool_Function_begin();
            MysqlConnect*  buff_db = GetNextConnect();
            if(buff_db== nullptr)
                return false;

            int time = reconnct_time_;

            while(time)
            {

                try
                {
                    stmt= nullptr;
                    if(time!=reconnct_time_)
                    {
                        int err = buff_db->connect();
                        if(err==2006||err==2013)
                        {
                            time--;
                            continue;
                        } else
                            return false;
                    }

                    stmt = new Statement(buff_db,sql);

                    if(stmt== NULL)
                        return false;
                    stmt->Execute();
                    return true;
                }
                catch(DatabaseException& data)
                {
                    std::cout<<"cdsfdsfd"<<std::endl;
                    if(data.GetErrorCode()==2006||data.GetErrorCode()==2013)
                    {

                        time--;
                        continue;
                    }
                    return false;
                }
            }

        }
        bool excecuteAsync(const std::string&sql, void * userdata,MysqlAsyncCallback callback)
        {
            MysqlConnect*  buff_db = GetNextConnect();
            if(buff_db== nullptr)
                return false;

            int time = reconnct_time_;
            while(time)
            {

                try
                {
                    if(time!=reconnct_time_)
                    {
                        int err = buff_db->connect();
                        if(err==2006||err==2013)
                        {
                            time--;
                            continue;
                        } else
                            return false;
                    }
                    Statement * stmt= nullptr;
                    {
                        MysqlRunPool_Function_begin();
                        stmt = new Statement(buff_db,sql);
                    }


                    if(stmt== nullptr)
                        return false;
                    asyncTask task;
                    task.callback=callback;
                    task.stmt=stmt;
                    task.user_data = userdata;
                    task.mysqlstr=sql;
                    thread_pool_ .addTask(task);
                    return true;
                    //stmt->ExecuteAsync(callback);

                }
                catch(DatabaseException& data)
                {
                    if(data.GetErrorCode()==2006||data.GetErrorCode()==2013)
                    {
                        time--;
                        continue;
                    }
                    return false;
                }
            }

        }
        //MysqlConnect * ()
    };
}



#endif //MYSQL_TEST_MYSQLPOOL_H
