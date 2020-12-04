
connection:"pmdevpresto"


explore: table1__d1dbc898_a0e7_469f_9dc5_acb0dbd81ff9 {

join: table2__199f79ba_d2d4_4c1d_bd58_9038b2c88d10 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d1dbc898_a0e7_469f_9dc5_acb0dbd81ff9.f1} = ${table2__199f79ba_d2d4_4c1d_bd58_9038b2c88d10.f2} ;;
}
}


view: table1__d1dbc898_a0e7_469f_9dc5_acb0dbd81ff9 {
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


view: table2__199f79ba_d2d4_4c1d_bd58_9038b2c88d10 {
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