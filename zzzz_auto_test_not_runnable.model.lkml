
connection:"pmdevpresto"


explore: table1__70e86b68_f9f7_431a_8e60_493ba63f8cb2 {

join: table2__c9cd23e2_e938_4cef_b226_e2973f42adf4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__70e86b68_f9f7_431a_8e60_493ba63f8cb2.f1} = ${table2__c9cd23e2_e938_4cef_b226_e2973f42adf4.f2} ;;
}
}


view: table2__c9cd23e2_e938_4cef_b226_e2973f42adf4 {
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


view: table1__70e86b68_f9f7_431a_8e60_493ba63f8cb2 {
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