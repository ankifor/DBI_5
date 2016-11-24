#pragma once

#pragma once

#include <exception>
#include <string>
#include <memory>
#include <sstream>
#include "Schema.hpp"

using namespace std;

class ParserQueryError : exception {
   string msg;
   int pos;
public:
   ParserQueryError(const string& m,int pos) : msg(m), pos(pos) {}
   ~ParserQueryError() throw() {}
   const char* what() const throw() {
      return msg.c_str();
   }
};

struct Parser_Query {
	istringstream in;
	const Schema* schema;

	Schema::Relation* rel;

	Parser_Query(const string& query_text, const Schema* schema) : in(query_text), schema(schema) {}
	~Parser_Query() {};
	void parse();
private:
	void nextToken(unsigned line, const string& token, Schema& s);
};
