
connection:"pmdevpresto"


explore: table1__3644fa80_2171_4baf_9529_bdc42c2a5f21 {

join: table2__2d1bd3c2_d728_4177_8b96_a60eeeab33f3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3644fa80_2171_4baf_9529_bdc42c2a5f21.f1} = ${table2__2d1bd3c2_d728_4177_8b96_a60eeeab33f3.f2} ;;
}
}


view: table1__3644fa80_2171_4baf_9529_bdc42c2a5f21 {
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


view: table2__2d1bd3c2_d728_4177_8b96_a60eeeab33f3 {
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