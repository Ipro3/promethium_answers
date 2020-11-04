
connection:"pmdevpresto"


explore: table1__dd2b9f7c_5129_4e2d_b1b3_4f7eed498d7e {

join: table2__c2619c1b_c13b_4525_9b99_67195d42dd08 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__dd2b9f7c_5129_4e2d_b1b3_4f7eed498d7e.f1} = ${table2__c2619c1b_c13b_4525_9b99_67195d42dd08.f2} ;;
}
}


view: table1__dd2b9f7c_5129_4e2d_b1b3_4f7eed498d7e {
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
}


view: table2__c2619c1b_c13b_4525_9b99_67195d42dd08 {
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
}