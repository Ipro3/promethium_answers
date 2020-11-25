
connection:"pmdevpresto"


explore: table1__222a451b_85c5_44a2_b409_9afd61abf8be {

join: table2__fc110877_2023_493c_9fff_600c48956e8c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__222a451b_85c5_44a2_b409_9afd61abf8be.f1} = ${table2__fc110877_2023_493c_9fff_600c48956e8c.f2} ;;
}
}


view: table1__222a451b_85c5_44a2_b409_9afd61abf8be {
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


view: table2__fc110877_2023_493c_9fff_600c48956e8c {
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