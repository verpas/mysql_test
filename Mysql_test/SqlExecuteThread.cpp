//
// Created by verpas on 2017/5/24.
//
#include "SqlExecuteThread.h"
#include "Statement.h"
#include <functional>
namespace ws
{
    void MysqlExecuteThread::run()
    {
        mysql_library_init(NULL,NULL,NULL);
        mysql_thread_init();

        //int err  = MysqlConnect::CreateMysqlConnect(init,mysql);
        //if(err!=0)
         //   printf("error\n\n\n");

        while(can_runing_)
        {

            try {
                asyncTask data;
                toThread_ >> data;
                try
                {
                    //Statement *stmt = new Statement(mysql,data.mysqlstr);
                    //if(stmt== nullptr)
                    //{
                    //    auto fun = std::bind(data.callback,data.stmt,1,data.user_data);
                     //   continue;
                    //}

                    //stmt->Execute();
                    data.stmt->Execute();
                    auto fun = std::bind(data.callback,data.stmt,0,data.user_data);
                    post_message_(fun);
                    //delete stmt;
                }catch(...)
                {

                }

                //tomain_<<data;
                //data.callback();
            }
            catch(...)
            {

            }

        }
        mysql_thread_end();
        mysql_library_end();
    }
};
