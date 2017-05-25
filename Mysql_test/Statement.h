#ifndef MYSQL_TEST_STATEMENT_H
#define MYSQL_TEST_STATEMENT_H

#include <vector>
#include "MysqlConnect.h"
#include "ParamBuffer.h"
#include "NullAble.h"
#include "IStatement.h"
#include <mysql_time.h>
#include <functional>
namespace ws {

	class Statement : public IStatement,public enable_shared_from_this<Statement> {
        friend class MysqlRunPool;
	public:

        using SQLCallBack=std::function<void (Statement* stat,int error)>;
		Statement(MysqlConnect *db, const std::string &sqlStatement);
		Statement(const Statement &);
		virtual ~Statement();

		virtual unsigned long ParameterCount();
		virtual unsigned long RemainingParameters();
		virtual void ResetParameters();
		virtual void Execute();
        virtual void ExecuteAsync(SQLCallBack callback);
		virtual bool FetchNextRow();
		virtual bool Eof();
		virtual unsigned long long NumberOfAffectedRows();
		virtual operator bool();
		virtual unsigned long long NumberOfReturnedRows();

		virtual Nullable<char> GetTinyDataInRow(unsigned int column);
		virtual Nullable<unsigned char> GetUTinyDataInRow(unsigned int column);
		virtual Nullable<short int> GetShortDataInRow(unsigned int column);
		virtual Nullable<unsigned short int> GetUShortDataInRow(unsigned int column);
		virtual Nullable<int> GetLongDataInRow(unsigned int column);
		virtual Nullable<unsigned int> GetULongDataInRow(unsigned int column);
		virtual Nullable<Julian> GetTimeDataInRow(unsigned int column);
		virtual Nullable<std::string> GetStringDataInRow(unsigned int column);
		virtual Nullable<Binary> GetBinaryDataInRow(unsigned int column);
		virtual Nullable<float> GetFloatDataInRow(unsigned int column);
		virtual Nullable<double> GetDoubleDataInRow(unsigned int column);

		/*virtual void AssignNextParameter(const Nullable<std::string> &data);
		virtual void AssignNextParameter(const Nullable<char> &data);
		virtual void AssignNextParameter(const Nullable<unsigned char> &data);
		virtual void AssignNextParameter(const Nullable<short int> &data);
		virtual void AssignNextParameter(const Nullable<unsigned short int> &data);
		virtual void AssignNextParameter(const Nullable<int> &data);
		virtual void AssignNextParameter(const Nullable<unsigned int> &data);
		virtual void AssignNextParameter(const Nullable<Julian> &data);
		virtual void AssignNextParameter(const Nullable<Binary> &data);
		virtual void AssignNextParameter(const Nullable<float> &data); 
		virtual void AssignNextParameter(const Nullable<double> &data);*/
        template<class X>
        void AssignNextParameter(const Nullable<X> &param) {
            AssignNextParameterTemplate(param);
        }


		virtual void GetDataInRow(unsigned int column, Nullable<std::string> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<char> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<unsigned char> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<short int> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<unsigned short int> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<int> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<unsigned int> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<Julian> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<Binary> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<float> &data);
		virtual void GetDataInRow(unsigned int column, Nullable<double> &data);

	protected:
		virtual unsigned int GetNextDataColumn();

		template<class X>
		void AssignNextParameterTemplate(const Nullable<X> &param) {
			if (! param.HasValue()) {
				AssignNextParameter(new ParamBuffer(typeid(Binary)));
			} else {
				AssignNextParameter(new ParamBuffer(param.const_deref()));
			}
		}

	private:
		void AssignNextParameter(ParamBuffer *buffer);
		void Prepare();
		void ClearParameters();
		void ClearResults();
        static void ExecuteQuery(Statement * stmt);

		unsigned int _numberResultColumns;
		unsigned int _currentColumn;
		bool _hasBlobField;
		my_ulonglong _numberAffectedRows;

        MysqlConnect *_db;
		MYSQL_STMT *_stmt;
		MYSQL_BIND *_bind;
		MYSQL_BIND *_resultBind;

		std::string _sqlStatement;
		bool _resultWasStored;
		bool _eof;

		std::vector<ParamBuffer*> _params;
		std::vector<ParamBuffer*> _resultParams;
	};

}
#endif