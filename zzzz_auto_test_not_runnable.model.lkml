
connection:"pmdevpresto"


explore: table1__c83f1894_a287_423c_8c11_f2e16c0e28a9 {

join: table2__f9ae5de6_8046_4b50_bada_99e2f2a60efb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c83f1894_a287_423c_8c11_f2e16c0e28a9.f1} = ${table2__f9ae5de6_8046_4b50_bada_99e2f2a60efb.f2} ;;
}
}


view: table1__c83f1894_a287_423c_8c11_f2e16c0e28a9 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 sql: ${TABLE}.f2;;
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [f0, f1, f2]
}
}


view: table2__f9ae5de6_8046_4b50_bada_99e2f2a60efb {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 sql: ${TABLE}.f2;;
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [f0, f1, f2]
}
}