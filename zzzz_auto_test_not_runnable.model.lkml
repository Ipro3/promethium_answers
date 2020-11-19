
connection:"pmdevpresto"


explore: table1__4dae5724_12a4_4d3b_9dff_00d75ddcdc29 {

join: table2__3323f096_ad78_43da_81fd_9c566c13cc6d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4dae5724_12a4_4d3b_9dff_00d75ddcdc29.f1} = ${table2__3323f096_ad78_43da_81fd_9c566c13cc6d.f2} ;;
}
}


view: table2__3323f096_ad78_43da_81fd_9c566c13cc6d {
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


view: table1__4dae5724_12a4_4d3b_9dff_00d75ddcdc29 {
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