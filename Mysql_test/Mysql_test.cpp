// Mysql_test.cpp : �������̨Ӧ�ó������ڵ㡣
//



/* Simple C program that connects to MySQL Database server*/
#include <mysql.h>
#include <stdio.h>
#include<string>
#include<tuple>
#include"MysqlConnect.h"
#include"Statement.h"
#include "SqlExecuteThread.h"
#include "MysqlPool.h"
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
using namespace ws;
std::queue<ws::Statement* > vvv;
std::queue<std::function<void ()> > que_fun;
MysqlRunPool* run;
void test_test(ws::Statement* stmt2,int err=0,void *data= nullptr)
{
	if(data!= nullptr)
	std::cout<<"task:"<<*(int *)data<<std::endl;
    while (stmt2->FetchNextRow()) {
        //testId++;
        //ws::Nullable<unsigned short int> countryId = stmt.GetUShortDataInRow(0);
        Nullable<int> countryName2 = stmt2->GetLongDataInRow(0);
        //Nullable<std::string> countryName2 = stmt2.GetStringDataInRow(0);
        Nullable<std::string> fristname = stmt2->GetStringDataInRow(1);
        Nullable<std::string> lastname = stmt2->GetStringDataInRow(2);
        Nullable<std::string> address = stmt2->GetStringDataInRow(3);
        Nullable<std::string> city = stmt2->GetStringDataInRow(4);
        //Nullable<Julian> lastUpdate = stmt.GetTimeDataInRow(2);
        std::cout<< "eeeee id:"<<countryName2<<"  name:"<<fristname<<","<<lastname<<"   city:"<<city<<std::endl<<std::endl;
        //stmt2.FetchNextRow();
        Nullable<int> id;
        fristname=lastname=address=city="";
		(*stmt2)>>id>>fristname>>lastname>>address>>city;
        ///UTASSERT(testId == (*countryId));

        //GregorianBreakdown gb = lastUpdate->to_gregorian(0);
        //UTASSERT(gb.year == 2006);
        //UTASSERT(gb.month == 2);
        //UTASSERT(gb.day == 15);
        std::cout<< "id:"<<id<<"  name:"<<fristname<<","<<lastname<<"   city:"<<city<<std::endl;
        //if (testId > 1) {
            //UTASSERT(countryName.deref() > lastCountry);
        //}
        //lastCountry = countryName.deref();
        //std::cout<<"test:"<<lastCountry <<endl;
    }
    //vvv.push(stmt2);
    //std::unique_lock<std::mutex> buf(g_mutex_);
    run->eraseStatment(stmt2);
}
void postmessage(std::function<void ()> call)
{
    //que_fun.push(call);
    call();
}

int main() {
	//MYSQL *conn;
	MYSQL_RES *res;
	MYSQL_ROW row;



    ws::MysqlInitParam param;
    param.server = "192.168.248.159";
    param.user = "verpas";
    param.password = "verpas"; /* set me first */
    param.database = "cg_test";

    ws::MysqlConnect* conn=NULL;
    int err = ws::MysqlConnect::CreateMysqlConnect(param,conn);
	insertQuery("", 1, 2, "543543", 2.2);

	/* Connect to database */

	/* send SQL query */
    //int er = conn->Query("show databases",res);


    ws::Statement stmt(conn, "SHOW DATABASES");
    stmt.Execute();

    int testId = 0;
    std::string lastCountry;

    while (stmt.FetchNextRow()) {
        testId++;
        //ws::Nullable<unsigned short int> countryId = stmt.GetUShortDataInRow(0);
        Nullable<std::string> countryName = stmt.GetStringDataInRow(0);
        //Nullable<Julian> lastUpdate = stmt.GetTimeDataInRow(2);

        ///UTASSERT(testId == (*countryId));

        //GregorianBreakdown gb = lastUpdate->to_gregorian(0);
        //UTASSERT(gb.year == 2006);
        //UTASSERT(gb.month == 2);
        //UTASSERT(gb.day == 15);

        if (testId > 1) {
            //UTASSERT(countryName.deref() > lastCountry);
        }
        lastCountry = countryName.deref();
        std::cout<<"test:"<<lastCountry <<endl;
    }

	run = new MysqlRunPool(param,postmessage);
	run->init();
	ws::Statement* test1;
	run->excecute("select * from Persons",test1);
	test_test(test1);

	std::cout<<std::endl;
	std::cout<<std::endl;
	std::cout<<std::endl;
	std::cout<<std::endl;
	std::cout<<std::endl;
	run->excecuteAsync("select * from Persons", nullptr,test_test);
	int i = 0;
	while(1)
	{
        //std::unique_lock<std::mutex> buf(g_mutex_);
		++i;
        //std::cout<<"i:"<<i<<std::endl;
		int * userdata = new int;
		*userdata=i;
		//test_test= nullptr;
        while(!que_fun.empty())
        {
            std::cout<<"delete"<<std::endl;
            auto fff= que_fun.front();
            que_fun.pop();
            fff();
        }
        while(!vvv.empty())
        {
            std::cout<<"delete"<<std::endl;
            auto fff= vvv.front();
            vvv.pop();
            run->eraseStatment(fff);
        }
		run->excecuteAsync("select * from Persons", (void *)userdata,test_test);

		//run->excecute("select * from Persons",test1);
		if(test1!= nullptr)
		{
			//test_test(test1,0,(void *)userdata);
			//run->eraseStatment(test1);
		}

	}
    //ws::Statement stmt3(*conn, "USE cg_test");
    //stmt3.Execute();

    ws::Statement stmt2(conn, "select * from Persons");
    stmt2.Execute();


    int testId2 = 0;
    std::string lastCountry2;
    ws::Statement stmt3(conn, "select * from Persons");
    stmt3.Execute();
    delete conn;
    //test_test(stmt3);
    std::cout<<"hjksh"<<std::endl;
    //test_test(stmt2);
    //UTASSERT(testId == 109);

	int a = 0;

	/* output table name */
	printf("MySQL Tables in mysql database:\n");
	while ((row = mysql_fetch_row(res)) != NULL)
		printf("%s \n", row[0]);

	/* close connection */
	mysql_free_result(res);

}