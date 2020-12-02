
connection:"pmdevpresto"


explore: table1__d16f0ced_3c1c_4c32_9685_ea5d31a12d93 {

join: table2__c2c59282_11c5_4dfc_999c_d4f2604e2ebc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d16f0ced_3c1c_4c32_9685_ea5d31a12d93.f1} = ${table2__c2c59282_11c5_4dfc_999c_d4f2604e2ebc.f2} ;;
}
}


view: table2__c2c59282_11c5_4dfc_999c_d4f2604e2ebc {
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


view: table1__d16f0ced_3c1c_4c32_9685_ea5d31a12d93 {
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