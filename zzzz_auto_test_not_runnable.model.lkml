
connection:"pmdevpresto"


explore: table1__bdccf704_317f_483f_ab77_125a68aa5286 {

join: table2__f6bf3faa_00ef_438d_98d6_a5ccdf008bb2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bdccf704_317f_483f_ab77_125a68aa5286.f1} = ${table2__f6bf3faa_00ef_438d_98d6_a5ccdf008bb2.f2} ;;
}
}


view: table1__bdccf704_317f_483f_ab77_125a68aa5286 {
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


view: table2__f6bf3faa_00ef_438d_98d6_a5ccdf008bb2 {
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