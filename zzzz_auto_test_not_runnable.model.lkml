
connection:"pmdevpresto"


explore: table1__2e1f3451_0064_44fe_b7bf_201666bd2639 {

join: table2__1c9fc6eb_314e_410d_84b4_d1450b9cec27 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2e1f3451_0064_44fe_b7bf_201666bd2639.f1} = ${table2__1c9fc6eb_314e_410d_84b4_d1450b9cec27.f2} ;;
}
}


view: table1__2e1f3451_0064_44fe_b7bf_201666bd2639 {
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


view: table2__1c9fc6eb_314e_410d_84b4_d1450b9cec27 {
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