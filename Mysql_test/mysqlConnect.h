#pragma once
#include<stdio.h>
#include"mysql.h"
#include<string>
#include<vector>
#include<tuple>
struct mysql_init_param
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
class mysqlConnect
{
	MYSQL *conn_;
	MYSQL_RES *res_;
	MYSQL_ROW row_;
	mysql_init_param init_param_;
	std::string errormsg_;
	bool is_connect_ = false;
	mysqlConnect(const mysql_init_param& a);
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
		/* Connect to database */
		if (!mysql_real_connect(
			conn_, 
			init_param_.server.c_str(),
			init_param_.user.c_str(), 
			init_param_.password.c_str(), 
			init_param_.database.c_str(), 0, NULL, 0)
			) 
		{
			//fprintf(stderr, "%s\n", mysql_error(conn));
			return do_error();
		}
		is_connect_ = true;

		if (mysql_set_character_set(conn_, "utf8") != 0)
		{
			return do_error();
		}
		return mysql_errno(conn_);
	}
public:
	static int CreateMysqlConnect(const mysql_init_param & param, mysqlConnect * connect)
	{
		std::tuple<int, int> k;
		
		connect = new mysqlConnect(param);
		return connect->init();
	}
	template<typename... ARGS>
	void insertQuery(const std::string& query, ARGS ... args)
	{
		auto args = std::make_tuple(args...);
		printf("length=%d,\n", k._Mysize);
	}


	int use_data_base(const std::string &dbName) {
		if (mysql_select_db(conn_, dbName.c_str()) != 0) {
			return do_error();
		}
	}

	~mysqlConnect();
};

