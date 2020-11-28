
connection:"pmdevpresto"


explore: table1__34eb19b1_154d_48fa_be75_b2fff4baa963 {

join: table2__678f9ff1_9b7b_452b_8641_80d59aa2c97e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__34eb19b1_154d_48fa_be75_b2fff4baa963.f1} = ${table2__678f9ff1_9b7b_452b_8641_80d59aa2c97e.f2} ;;
}
}


view: table1__34eb19b1_154d_48fa_be75_b2fff4baa963 {
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


view: table2__678f9ff1_9b7b_452b_8641_80d59aa2c97e {
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