#include "Types.hpp"
#include "schema_1.hpp"
#include <iostream>
#include <unordered_map>
using namespace std;
bool predicat0(const Integer& o_id){return o_id==7;}extern "C" void run_query(const Database& db) {
using type_key0=tuple<Integer,Integer>;using type_val0=tuple<Varchar<10>>;unordered_multimap<type_key0,type_val0,hash_types::hash<type_key0>> hash0;for (Tid tid1 = 0;tid1 < db.district.size(); ++tid1){hash0.insert(make_pair(make_tuple(db.district.d_w_id[tid1],db.district.d_id[tid1]),make_tuple(db.district.d_name[tid1])));}for (Tid tid2 = 0;tid2 < db.order.size(); ++tid2){if (predicat0(db.order.o_id[tid2])){auto it0=hash0.equal_range(make_tuple(db.order.o_w_id[tid2],db.order.o_d_id[tid2]));while (it0.first != it0.second){cout<<get<0>(it0.first->second)<<endl;++it0.first;}}}}