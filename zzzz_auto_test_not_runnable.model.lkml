
connection:"pmdevpresto"


explore: table1__f5075983_61a3_471e_8061_d73c77d50487 {

join: table2__c425adaa_65c5_42c2_865a_18515431a570 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f5075983_61a3_471e_8061_d73c77d50487.f1} = ${table2__c425adaa_65c5_42c2_865a_18515431a570.f2} ;;
}
}


view: table2__c425adaa_65c5_42c2_865a_18515431a570 {
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


view: table1__f5075983_61a3_471e_8061_d73c77d50487 {
sql_table_name:catalog1.db1.table1 ;;
  dimension: primary_key {
  primary_key: yes
  sql: CONCAT(${TABLE}.f1, ${TABLE}.f2, ${TABLE}.f3) ;;
}
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