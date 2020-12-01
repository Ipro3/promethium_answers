
connection:"pmdevpresto"


explore: table1__c9e31ea6_9b7e_411e_a18b_065a6e743501 {

join: table2__98a15af6_c50b_4f4d_9361_3838f60c3689 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c9e31ea6_9b7e_411e_a18b_065a6e743501.f1} = ${table2__98a15af6_c50b_4f4d_9361_3838f60c3689.f2} ;;
}
}


view: table1__c9e31ea6_9b7e_411e_a18b_065a6e743501 {
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


view: table2__98a15af6_c50b_4f4d_9361_3838f60c3689 {
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