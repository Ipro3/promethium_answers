
connection:"pmdevpresto"


explore: table1__da294636_9178_4bbc_a343_490675b9c669 {

join: table2__28b1fbcd_c6ca_4c8e_a75b_ba7bd8ceb8a0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__da294636_9178_4bbc_a343_490675b9c669.f1} = ${table2__28b1fbcd_c6ca_4c8e_a75b_ba7bd8ceb8a0.f2} ;;
}
}


view: table1__da294636_9178_4bbc_a343_490675b9c669 {
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


view: table2__28b1fbcd_c6ca_4c8e_a75b_ba7bd8ceb8a0 {
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