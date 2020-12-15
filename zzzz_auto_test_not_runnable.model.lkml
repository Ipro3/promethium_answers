
connection:"pmdevpresto"


explore: table1__2fb0cf4d_062e_49e9_b2a2_6dd8abaf3634 {

join: table2__76a6de90_44a9_497a_a5f0_d42772891357 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2fb0cf4d_062e_49e9_b2a2_6dd8abaf3634.f1} = ${table2__76a6de90_44a9_497a_a5f0_d42772891357.f2} ;;
}
}


view: table1__2fb0cf4d_062e_49e9_b2a2_6dd8abaf3634 {
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


view: table2__76a6de90_44a9_497a_a5f0_d42772891357 {
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