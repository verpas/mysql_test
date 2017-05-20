
#include "mysqlConnect.h"

//#include<>
mysqlConnect::mysqlConnect(const mysql_init_param& a):init_param_(a)
{
}


mysqlConnect::~mysqlConnect()
{
	mysql_close(conn_);
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