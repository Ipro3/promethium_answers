
connection:"pmdevpresto"


explore: table1__e797952d_f36a_4e06_b07b_82cb95cd843c {

join: table2__b2458a86_c481_4f93_b210_d0493d2ccb56 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e797952d_f36a_4e06_b07b_82cb95cd843c.f1} = ${table2__b2458a86_c481_4f93_b210_d0493d2ccb56.f2} ;;
}
}


view: table2__b2458a86_c481_4f93_b210_d0493d2ccb56 {
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


view: table1__e797952d_f36a_4e06_b07b_82cb95cd843c {
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