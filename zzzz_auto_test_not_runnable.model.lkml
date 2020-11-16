
connection:"pmdevpresto"


explore: table1__712795c6_be3c_479c_ae9e_ff97ae3f8f39 {

join: table2__349f3e18_5065_4d2e_9fc7_2500284a5681 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__712795c6_be3c_479c_ae9e_ff97ae3f8f39.f1} = ${table2__349f3e18_5065_4d2e_9fc7_2500284a5681.f2} ;;
}
}


view: table2__349f3e18_5065_4d2e_9fc7_2500284a5681 {
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


view: table1__712795c6_be3c_479c_ae9e_ff97ae3f8f39 {
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