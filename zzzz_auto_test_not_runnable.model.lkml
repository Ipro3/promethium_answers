
connection:"pmdevpresto"


explore: table1__c5eaa079_aeb5_4339_bff9_39a1673065e3 {

join: table2__9e4e2f73_97a2_4af1_8924_5f8e5c8d32f7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c5eaa079_aeb5_4339_bff9_39a1673065e3.f1} = ${table2__9e4e2f73_97a2_4af1_8924_5f8e5c8d32f7.f2} ;;
}
}


view: table1__c5eaa079_aeb5_4339_bff9_39a1673065e3 {
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


view: table2__9e4e2f73_97a2_4af1_8924_5f8e5c8d32f7 {
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