
connection:"pmdevpresto"


explore: table1__c2ed46b9_1af4_4ac8_8b6b_f88380c350e2 {

join: table2__0c92e3c4_b6f0_46ec_92a2_05b7d0814a92 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c2ed46b9_1af4_4ac8_8b6b_f88380c350e2.f1} = ${table2__0c92e3c4_b6f0_46ec_92a2_05b7d0814a92.f2} ;;
}
}


view: table1__c2ed46b9_1af4_4ac8_8b6b_f88380c350e2 {
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


view: table2__0c92e3c4_b6f0_46ec_92a2_05b7d0814a92 {
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