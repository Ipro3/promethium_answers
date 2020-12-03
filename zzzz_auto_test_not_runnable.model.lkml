
connection:"pmdevpresto"


explore: table1__74b57bed_797a_4108_bf03_093e138bd250 {

join: table2__c8cf3c7a_c051_4f98_bdcd_fea847cc6007 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__74b57bed_797a_4108_bf03_093e138bd250.f1} = ${table2__c8cf3c7a_c051_4f98_bdcd_fea847cc6007.f2} ;;
}
}


view: table1__74b57bed_797a_4108_bf03_093e138bd250 {
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


view: table2__c8cf3c7a_c051_4f98_bdcd_fea847cc6007 {
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