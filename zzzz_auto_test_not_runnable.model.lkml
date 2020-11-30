
connection:"pmdevpresto"


explore: table1__8e3e56d1_7c95_40bd_bc7a_027ef181e095 {

join: table2__b8cd34fb_3b8f_423b_afb5_9319753f3eb1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8e3e56d1_7c95_40bd_bc7a_027ef181e095.f1} = ${table2__b8cd34fb_3b8f_423b_afb5_9319753f3eb1.f2} ;;
}
}


view: table1__8e3e56d1_7c95_40bd_bc7a_027ef181e095 {
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


view: table2__b8cd34fb_3b8f_423b_afb5_9319753f3eb1 {
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