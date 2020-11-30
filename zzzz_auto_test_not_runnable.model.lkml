
connection:"pmdevpresto"


explore: table1__8c0b8267_a20b_4155_b2da_cce2264b53a5 {

join: table2__21647068_0d7a_4fe5_81e5_645b820a9cf2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8c0b8267_a20b_4155_b2da_cce2264b53a5.f1} = ${table2__21647068_0d7a_4fe5_81e5_645b820a9cf2.f2} ;;
}
}


view: table1__8c0b8267_a20b_4155_b2da_cce2264b53a5 {
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


view: table2__21647068_0d7a_4fe5_81e5_645b820a9cf2 {
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