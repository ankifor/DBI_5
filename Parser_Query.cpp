#include "Parser_Query.h"

#include <iostream>
#include <iterator>
#include <algorithm>
#include <cstdlib>
#include <cctype>
#include <regex>
#include <assert.h>

using namespace std;

namespace keyword {
	const string Select  = "select"  ;
	const string From    = "from"    ;
	const string And    = "and"    ;
	const string Where   = "where"   ;
}

namespace literal {
	const char Comma  = ','  ;
	const char Semicolon  = ';'  ;
	const char EqualSign  = '='  ;
	const char Quote  = '\''  ;
	const char Screen  = '\\'  ;
}

template<typename T>
struct NamePredicate {
	const string& name;
	NamePredicate(const string& name) : name(name) {}
	bool operator()(const T& t) const { return t.name == name; }
};

static bool is_identifier(const string& s) {
	if (s == keyword::Select || s == keyword::From || s == keyword::Where) return false;
	return regex_match(s, regex("[A-Za-z_](\\w|_)+"));
}

static bool is_numeric(const string& s) {
	return regex_match(s, regex("[+-]?\\d*(.\\d+)?"));
}

static string read_token(istringstream& in) {
	assert(!in.eof());
	string tmp = "";
	bool any = false;
	char ch = 0;
	while (in.get(ch)) {
		if (
			ch == literal::Comma
			|| ch == literal::EqualSign
			|| ch == literal::Quote
			|| ch == literal::Screen
			|| ch == literal::Semicolon
		)
		{
			if (!any) {
				tmp += ch;
				any = true;
			} else {
				in.unget();
			}
			break;
		} else if (ch==' '||ch == '\r'|| ch=='\n'||ch=='\t') {
			if (any) {
				break;
			}
		} else {
			tmp += ch;
			any = true;
		}
	}
	return tmp;
}


static string read_quoted_text(istringstream& in) {
	enum class State : unsigned { 
		General, Screen, Finished
	} state;
	state = State::General;
	
	string res = "";
	string tmp;
	int start = in.tellg();
	
	while (!in.eof() && state != State::Finished) {
		tmp = read_token(in);
		switch (state) {
			case State::General:
				if (tmp == string(1,literal::Screen)) {
					state = State::Screen;
				} else if (tmp == string(1,literal::Quote)) {
					state = State::Finished;
					break;
				}
				break;
			case State::Screen:
				state = State::General;
				break;
		}
	}
	
	int end = in.tellg() - 1;
	return "\"" + in.str().substr(start, end-start) + "\"";
}

static string read_conditions_list(istringstream& in, vector<pair<string,string>>& conditions) {
	enum class State : unsigned { 
		Init, Left, Equal, Right, And, Finished
	} state;
	state = State::Init;
	
	string tmp;
	while (!in.eof() && state != State::Finished) {
		tmp = read_token(in);
		switch (state) {
			case State::And:
			case State::Init:
				if (is_identifier(tmp) || is_numeric(tmp)) {
					conditions.push_back(make_pair("",""));
					conditions.back().first = tmp;
					state = State::Left;
				} else if (tmp == string(1,literal::Quote)) {
					conditions.push_back(make_pair("",""));
					conditions.back().first = read_quoted_text(in);
					state = State::Left;
				} else {
					throw ParserQueryError("Identifier, Number or Quoted Text expected",in.tellg());
				}
				break;
			case State::Equal:
				if (is_identifier(tmp) || is_numeric(tmp)) {
					conditions.back().second = tmp;
					state = State::Right;
				} else if (tmp == string(1,literal::Quote)) {
					conditions.back().second = read_quoted_text(in);
					state = State::Right;
				} else {
					throw ParserQueryError("Identifier, Number or Quoted Text expected",in.tellg());
				}
				break;
			case State::Left:
				if (tmp == string(1,literal::EqualSign)) {
					state = State::Equal;
				} else {
					throw ParserQueryError("'=' Expected",in.tellg());
				}
				break;
			case State::Right:
				if (tmp == string(1,literal::Semicolon)) {
					state = State::Finished;
				} else if (tmp == keyword::And) {
					state = State::And;
				} else {
					throw ParserQueryError("';' or 'and' expected",in.tellg());
				}
				break;
		}
	}
	if (state != State::Finished) {
		throw ParserQueryError("Input ended too early",in.tellg());
	}
	if (in.eof()) tmp = "";
	return tmp;
}


static string read_comma_delimited_list(istringstream& in, const string& stop_str, vector<string>& ident_list) {
	enum class State : unsigned { 
		Init, Identifier, Comma, Finished
	} state;
	state = State::Init;
	
	string tmp;
	while (!in.eof() && state != State::Finished) {
		tmp = read_token(in);
		switch (state) {
			case State::Comma:
			case State::Init:
				if (is_identifier(tmp)) {
					state = State::Identifier;
					ident_list.push_back(tmp);
				} else {
					throw ParserQueryError("Identifier Expected",in.tellg());
				}
				break;
			case State::Identifier:
				if (tmp == string(1,literal::Comma)) {
					state = State::Comma;
				} else if (tmp == string(1,literal::Semicolon)) {
					state = State::Finished;
					break;
				} else if (tmp == stop_str) {
					state = State::Finished;
					break;
				} else {
					throw ParserQueryError("Comma Expected",in.tellg());
				}
				break;
		}
	}
	if (state != State::Finished && state != State::Identifier) {
		throw ParserQueryError("Identifier Expected",in.tellg());
	}
	if (in.eof()) tmp = "";
	return tmp;
}




void Parser_Query::parse() {
	string tmp;
	tmp = read_token(in);
	if (tmp != keyword::Select) {
		throw ParserQueryError("Select Expected",in.tellg());
	}
	
	vector<string> fields;
	if (read_comma_delimited_list(in, keyword::From, fields) != keyword::From) {
		throw ParserQueryError("From Expected",in.tellg());
	}
	
	vector<string> tables;
	vector<pair<string,string>> conditions;
	if (read_comma_delimited_list(in, keyword::Where, tables) == keyword::Where) {
		if (read_conditions_list(in, conditions) != string(1,literal::Semicolon)) {
			assert(false);
		}
	}
	for (auto& x : fields) cout << x << ",";
	cout << endl;
	
	for (auto& x : tables) cout << x << ",";
	cout << endl;
	
	for (auto& x : conditions) cout << x.first << "=" << x.second << ",";
	cout << endl;
	
}



