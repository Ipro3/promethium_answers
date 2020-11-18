
connection:"pmdevpresto"


explore: table1__a6449648_8eea_4a17_a603_a37c759c2e08 {

join: table2__f8836cbc_ce9f_4c84_b28b_ab62da0c1084 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a6449648_8eea_4a17_a603_a37c759c2e08.f1} = ${table2__f8836cbc_ce9f_4c84_b28b_ab62da0c1084.f2} ;;
}
}


view: table1__a6449648_8eea_4a17_a603_a37c759c2e08 {
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


view: table2__f8836cbc_ce9f_4c84_b28b_ab62da0c1084 {
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