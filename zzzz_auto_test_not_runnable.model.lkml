
connection:"pmdevpresto"


explore: table1__4343a8b3_555c_4ee8_8ba0_6c221b244f4b {

join: table2__4954c530_2de7_46e3_9661_0fce2e29d323 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4343a8b3_555c_4ee8_8ba0_6c221b244f4b.f1} = ${table2__4954c530_2de7_46e3_9661_0fce2e29d323.f2} ;;
}
}


view: table1__4343a8b3_555c_4ee8_8ba0_6c221b244f4b {
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


view: table2__4954c530_2de7_46e3_9661_0fce2e29d323 {
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