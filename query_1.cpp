#include "Types.hpp"
#include "schema_1.hpp"
#include <iostream>
#include <unordered_map>
using namespace std;
bool predicat5(const Integer& ol_number,const Integer& ol_o_id){return ol_number==1 && ol_o_id==100;}extern "C" void run_query(const Database& db) {
using type_key6=tuple<Integer,Integer,Integer>;using type_val6=tuple<Varchar<16>,Integer,Integer>;unordered_multimap<type_key6,type_val6,hash_types::hash<type_key6>> hash7;using type_key7=tuple<Integer>;using type_val7=tuple<Varchar<16>>;unordered_multimap<type_key7,type_val7,hash_types::hash<type_key7>> hash6;for (Tid tid12 = 0;tid12 < db.customer.size(); ++tid12){hash6.insert(make_pair(make_tuple(db.customer.c_id[tid12]),make_tuple(db.customer.c_last[tid12])));}for (Tid tid13 = 0;tid13 < db.order.size(); ++tid13){auto it6=hash6.equal_range(make_tuple(db.order.o_c_id[tid13]));while (it6.first != it6.second){hash7.insert(make_pair(make_tuple(db.order.o_id[tid13],db.order.o_d_id[tid13],db.order.o_w_id[tid13]),make_tuple(get<0>(it6.first->second),get<0>(it6.first->first),db.order.o_c_id[tid13])));++it6.first;}}for (Tid tid14 = 0;tid14 < db.orderline.size(); ++tid14){if (predicat5(db.orderline.ol_number[tid14],db.orderline.ol_o_id[tid14])){auto it7=hash7.equal_range(make_tuple(db.orderline.ol_o_id[tid14],db.orderline.ol_d_id[tid14],db.orderline.ol_w_id[tid14]));while (it7.first != it7.second){cout<<get<0>(it7.first->second)<<","<<get<0>(it7.first->first)<<","<<db.orderline.ol_dist_info[tid14]<<endl;++it7.first;}}}}