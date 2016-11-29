#compile everything
_dir=./Release
rm -r $_dir
mkdir $_dir
_flags="-O3 -fexpensive-optimizations -std=c++11 -Wall -DNDEBUG -I. -I."

_cpp=main.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o 
_cpp=Schema.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o
_cpp=code_generation.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o
_cpp=helpers.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o 
_cpp=Parser_Schema.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o
_cpp=Parser_Query.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o
_cpp=Types.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o
_cpp=schema_1.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o

g++ -o $_dir/DBI_5 $_dir/main.cpp.o $_dir/Schema.cpp.o $_dir/code_generation.cpp.o $_dir/helpers.cpp.o $_dir/Parser_Schema.cpp.o $_dir/Parser_Query.cpp.o $_dir/schema_1.cpp.o $_dir/Types.cpp.o -L.  -lrt -ldl  -rdynamic

#prepare object files for runtime compilation
_dir=./temp

rm -r $_dir
mkdir $_dir
_flags="-fPIC -O3 -fexpensive-optimizations -std=c++11 -DNDEBUG -I. -I."
_cpp=schema_1.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o 
_cpp=Types.cpp && g++ -c $_cpp $_flags  -o $_dir/$_cpp.o

