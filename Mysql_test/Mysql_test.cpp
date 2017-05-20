// Mysql_test.cpp : �������̨Ӧ�ó������ڵ㡣
//



/* Simple C program that connects to MySQL Database server*/
#include <mysql.h>
#include <stdio.h>
#include<string>
#include<tuple>

struct typenum
{
	static enum enum_field_types {
		MYSQL_TYPE_DECIMAL, MYSQL_TYPE_TINY,
		MYSQL_TYPE_SHORT, MYSQL_TYPE_LONG,
		MYSQL_TYPE_FLOAT, MYSQL_TYPE_DOUBLE,
		MYSQL_TYPE_NULL, MYSQL_TYPE_TIMESTAMP,
		MYSQL_TYPE_LONGLONG, MYSQL_TYPE_INT24,
		MYSQL_TYPE_DATE, MYSQL_TYPE_TIME,
		MYSQL_TYPE_DATETIME, MYSQL_TYPE_YEAR,
		MYSQL_TYPE_NEWDATE, MYSQL_TYPE_VARCHAR,
		MYSQL_TYPE_BIT,
		MYSQL_TYPE_TIMESTAMP2,
		MYSQL_TYPE_DATETIME2,
		MYSQL_TYPE_TIME2,
		MYSQL_TYPE_JSON = 245,
		MYSQL_TYPE_NEWDECIMAL = 246,
		MYSQL_TYPE_ENUM = 247,
		MYSQL_TYPE_SET = 248,
		MYSQL_TYPE_TINY_BLOB = 249,
		MYSQL_TYPE_MEDIUM_BLOB = 250,
		MYSQL_TYPE_LONG_BLOB = 251,
		MYSQL_TYPE_BLOB = 252,
		MYSQL_TYPE_VAR_STRING = 253,
		MYSQL_TYPE_STRING = 254,
		MYSQL_TYPE_GEOMETRY = 255,
		MYSQL_TYPE_UNKNOW = 256
	};
};
template<typename T>
struct getType
{
	typedef T type;
};
template<typename T>
struct getType<const T>
{
	typedef T type;
};
template<typename T>
struct getType<const T&>
{
	typedef T type;
};
template<typename T>
struct getType<T*>
{
	typedef T type;
};
template<typename T>
struct getType<const T*>
{
	typedef T type;
};

template<typename T>
struct getType<T&&>
{
	typedef T type;
};




template<typename T>
struct TypeSet
{
	T value;
	typenum::enum_field_types type = typenum::enum_field_types::MYSQL_TYPE_UNKNOW;
};
template<>
struct TypeSet<int>
{
	int value;
	typenum::enum_field_types type = typenum::enum_field_types::MYSQL_TYPE_LONG;
};

template<>
struct TypeSet<char *>
{
	int value;
	typenum::enum_field_types type = typenum::enum_field_types::MYSQL_TYPE_LONG;
};
template<>
struct TypeSet< std::string >
{
	int value;
	typenum::enum_field_types type = typenum::enum_field_types::MYSQL_TYPE_BLOB;
};


template<typename... ARGS>
void insertQuery(const std::string& query, ARGS ... args)
{
	auto tupleargs = std::make_tuple(args...);
	printf("length=%d,\n", std::tuple_size<decltype(tupleargs)>::value);
	auto k = std::get<0>(tupleargs);
	std::get<0>(tupleargs) = 5555;
}


int main() {
	MYSQL *conn;
	MYSQL_RES *res;
	MYSQL_ROW row;

	char *server = "192.168.248.129";
	char *user = "verpas";
	char *password = "verpas"; /* set me first */
	char *database = "";

	conn = mysql_init(NULL);
	insertQuery("", 1, 2, "543543", 2.2);
	/* Connect to database */
	if (!mysql_real_connect(conn, server,
		user, password, database, 0, NULL, 0)) {
		int error_msg = mysql_errno(conn);
		fprintf(stderr, "%s\n", mysql_error(conn));
		mysql_close(conn);
		exit(1);
	}
	int error_msg = mysql_errno(conn);
	/* send SQL query */
	if (mysql_query(conn, "show databases")) {
		fprintf(stderr, "%s\n", mysql_error(conn));
		exit(1);
	}



	int a = 0;
	res = mysql_use_result(conn);
	/* output table name */
	printf("MySQL Tables in mysql database:\n");
	while ((row = mysql_fetch_row(res)) != NULL)
		printf("%s \n", row[0]);

	/* close connection */
	mysql_free_result(res);
	mysql_close(conn);
}				