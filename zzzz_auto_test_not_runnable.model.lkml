
connection:"pmdevpresto"


explore: table1__c7d1d193_83ba_43f9_8196_fea9eb317062 {

join: table2__7b610bd8_91b4_4e1b_b5a7_e2a0155fdc1a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c7d1d193_83ba_43f9_8196_fea9eb317062.f1} = ${table2__7b610bd8_91b4_4e1b_b5a7_e2a0155fdc1a.f2} ;;
}
}


view: table1__c7d1d193_83ba_43f9_8196_fea9eb317062 {
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


view: table2__7b610bd8_91b4_4e1b_b5a7_e2a0155fdc1a {
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