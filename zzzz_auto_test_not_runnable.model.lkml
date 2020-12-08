
connection:"pmdevpresto"


explore: table1__ad6d2e60_2215_4489_81c5_7b683bb9aaa6 {

join: table2__49ff6691_5377_4b5f_9607_fb289a5bd22a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ad6d2e60_2215_4489_81c5_7b683bb9aaa6.f1} = ${table2__49ff6691_5377_4b5f_9607_fb289a5bd22a.f2} ;;
}
}


view: table2__49ff6691_5377_4b5f_9607_fb289a5bd22a {
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


view: table1__ad6d2e60_2215_4489_81c5_7b683bb9aaa6 {
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