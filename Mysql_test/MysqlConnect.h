#pragma once
#include<stdio.h>
#include"mysql.h"
#include<string>
#include<vector>
#include<tuple>
#include <thread>
namespace ws
{
    struct MysqlInitParam
    {
        /*
        std::string server = "192.168.24.155";
        char *user = "verpas";
        char *password = "root"; /* set me first
        char *database = "";
        */
        std::string server= "192.168.24.155";
        std::string user = "verpas" ;
        std::string password = "root"; /* set me first*/
        std::string database = "";
        int reconnect=3;
        //bool auto_reconnect
    };
/*use for mulit thread */
//todo: use for mulit thread
    class MysqlLibrary
    {
        static bool LibraryInitialize();
        static bool ThreadInitialize();

        static bool LibraryFinalize();
        static bool ThreadFinalize();
    };
#define function_start()\
    if(!check_connect())\
        return -1;
#define function_end()\
 return do_error();
    class MysqlConnect
    {
        MYSQL *conn_;
        MYSQL_RES *res_;
        MYSQL_ROW row_;
        MysqlInitParam init_param_;
        std::string errormsg_;
        bool auto_commit_=false;
        std::mutex m_mutex;
        MysqlConnect(const MysqlInitParam& a);
        int do_error()
        {
            errormsg_ = mysql_error(conn_);
            return  mysql_errno(conn_);
        }
        int init()
        {
            conn_ = mysql_init(NULL);
            if (conn_ == NULL)
            {
                errormsg_ = mysql_error(conn_);
                return  mysql_errno(conn_);
            }
            return connect();
        }
    public:
        int connect()
        {
            /* Connect to database */
            int times=init_param_.reconnect;

            while(times)
            {
                times--;
                if (!mysql_real_connect(
                        conn_,
                        init_param_.server.c_str(),
                        init_param_.user.c_str(),
                        init_param_.password.c_str(),
                        init_param_.database.c_str(), 0, NULL, 0)
                        )
                {
                    //fprintf(stderr, "%s\n", mysql_error(conn));
                    int err = do_error();
                    if(err==2006||err==2013)
                    continue;
                }

                int reconnect=1;
                if(mysql_options(conn_,MYSQL_OPT_RECONNECT,&reconnect)!=0)
                    return do_error();
                if (mysql_set_character_set(conn_, "utf8") != 0)
                {
                    return do_error();
                }
                if(Autocommit(auto_commit_)!=0)
                    return do_error();

                return mysql_errno(conn_);
            }
            return do_error();

        }
        static int CreateMysqlConnect(const MysqlInitParam & param, MysqlConnect * & connect)
        {
            std::tuple<int, int> k;

            connect = new MysqlConnect(param);
            return connect->init();
        }
        template<typename... ARGS>
        void insertQuery(const std::string& query, ARGS ... args)
        {
            auto argstuple = std::make_tuple(args...);
            printf("length=%d,\n", std::tuple_size<decltype(argstuple)>::value);
        }

        MYSQL * db()
        {
            return conn_;
        }
        int use_data_base(const std::string &dbName) {
            function_start();
            if (mysql_select_db(conn_, dbName.c_str()) != 0) {
                function_end();
            }
            function_end();
        }

        bool check_connect()const {
            if(mysql_ping(conn_)==0)
                return true;
            return false;
        }
        bool Autocommit() const
        {
            return auto_commit_;
        }
        int Autocommit(bool value)
        {
            function_start();
            auto_commit_= value;
            if (mysql_autocommit(conn_, auto_commit_) != 0) {

            }
            function_end();
        }


        int StartTransaction()
        {
            function_start();
            if (mysql_query(conn_, "START TRANSACTION") != 0) {
                //throw DatabaseException(_db, "Error in Database::StartTransaction");
            }
            function_end();
        }
        int Commit() {
            function_start();
            if (mysql_query(conn_, "COMMIT") != 0) {
                return do_error();
            }
            function_end();
        }
        int Query(const std::string & query,MYSQL_RES *& res)
        {
            function_start();
            mysql_query(conn_,query.c_str());
            res = mysql_use_result(conn_);
            function_end();
        }
        int Rollback() {

            function_start();
            if (mysql_query(conn_, "ROLLBACK") != 0) {
                //throw DatabaseException(_db, "Error in Database::Rollback");
            }
            function_end();
        }
        MYSQL_STMT *  Statement_init()
        {
            if(!check_connect())
                return nullptr;
            auto stmt = mysql_stmt_init(conn_);
            return stmt;

        }

        ~MysqlConnect();
    };

};


