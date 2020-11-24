
connection:"pmdevpresto"


explore: table1__3a86b740_6165_45e4_b91a_91811a4c748a {

join: table2__e8e55433_a7d3_4bbc_9c5d_6607f42c39f5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3a86b740_6165_45e4_b91a_91811a4c748a.f1} = ${table2__e8e55433_a7d3_4bbc_9c5d_6607f42c39f5.f2} ;;
}
}


view: table1__3a86b740_6165_45e4_b91a_91811a4c748a {
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


view: table2__e8e55433_a7d3_4bbc_9c5d_6607f42c39f5 {
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