
connection:"pmdevpresto"


explore: table1__c8b6206e_0e39_4d5d_a94d_220395b66478 {

join: table2__d74a3258_6252_4510_ad1c_bb40df3c6a14 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c8b6206e_0e39_4d5d_a94d_220395b66478.f1} = ${table2__d74a3258_6252_4510_ad1c_bb40df3c6a14.f2} ;;
}
}


view: table2__d74a3258_6252_4510_ad1c_bb40df3c6a14 {
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


view: table1__c8b6206e_0e39_4d5d_a94d_220395b66478 {
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