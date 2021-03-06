
connection:"pmdevpresto"


explore: table1__46609493_b295_49e1_9a7f_1a15a6fe1207 {

join: table2__5747f83b_1f2e_418b_b8b9_a23673cf6962 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__46609493_b295_49e1_9a7f_1a15a6fe1207.f1} = ${table2__5747f83b_1f2e_418b_b8b9_a23673cf6962.f2} ;;
}
}


view: table1__46609493_b295_49e1_9a7f_1a15a6fe1207 {
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


view: table2__5747f83b_1f2e_418b_b8b9_a23673cf6962 {
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