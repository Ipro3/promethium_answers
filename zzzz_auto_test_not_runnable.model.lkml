
connection:"pmdevpresto"


explore: table1__6c6f5866_afc5_4ae3_9002_31abc2aa9be1 {

join: table2__bdb24ae8_b6e7_4751_b5a6_775da8ee6646 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6c6f5866_afc5_4ae3_9002_31abc2aa9be1.f1} = ${table2__bdb24ae8_b6e7_4751_b5a6_775da8ee6646.f2} ;;
}
}


view: table1__6c6f5866_afc5_4ae3_9002_31abc2aa9be1 {
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


view: table2__bdb24ae8_b6e7_4751_b5a6_775da8ee6646 {
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