
connection:"pmdevpresto"


explore: table1__8d4a3d08_64de_4856_9b2e_305f6f9f02d3 {

join: table2__4aebbc14_2f47_4e95_a239_fd44b97c84c2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8d4a3d08_64de_4856_9b2e_305f6f9f02d3.f1} = ${table2__4aebbc14_2f47_4e95_a239_fd44b97c84c2.f2} ;;
}
}


view: table1__8d4a3d08_64de_4856_9b2e_305f6f9f02d3 {
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


view: table2__4aebbc14_2f47_4e95_a239_fd44b97c84c2 {
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