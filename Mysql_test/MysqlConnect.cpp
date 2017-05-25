
#include "MysqlConnect.h"

//#include<>
namespace ws
{
    MysqlConnect::MysqlConnect(const MysqlInitParam& a):init_param_(a)
    {
    }


    MysqlConnect::~MysqlConnect()
    {
        mysql_close(conn_);
        printf("close connect \n");
    }


    bool MysqlLibrary::LibraryInitialize() {
        if (mysql_library_init(0, NULL, NULL) != 0) {
            return false;
        }
    }

    bool MysqlLibrary::ThreadInitialize() {
        if (mysql_thread_init() != 0) {
            return false;
        }
    }

    bool MysqlLibrary::LibraryFinalize() {
        mysql_library_end();
    }

    bool MysqlLibrary::ThreadFinalize() {
        mysql_thread_end();
    }
};
