
connection:"pmdevpresto"


explore: table1__beec2f1c_92f8_4ffb_8f94_2e8cec613ae9 {

join: table2__74a2ad87_a168_401d_a7fe_540ff70ad491 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__beec2f1c_92f8_4ffb_8f94_2e8cec613ae9.f1} = ${table2__74a2ad87_a168_401d_a7fe_540ff70ad491.f2} ;;
}
}


view: table2__74a2ad87_a168_401d_a7fe_540ff70ad491 {
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


view: table1__beec2f1c_92f8_4ffb_8f94_2e8cec613ae9 {
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