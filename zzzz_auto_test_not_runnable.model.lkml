
connection:"pmdevpresto"


explore: table1__14d64188_b242_41f2_9c31_788dde76e621 {

join: table2__70a2f5b3_4632_4b88_a428_bee72ff0d689 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__14d64188_b242_41f2_9c31_788dde76e621.f1} = ${table2__70a2f5b3_4632_4b88_a428_bee72ff0d689.f2} ;;
}
}


view: table2__70a2f5b3_4632_4b88_a428_bee72ff0d689 {
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


view: table1__14d64188_b242_41f2_9c31_788dde76e621 {
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