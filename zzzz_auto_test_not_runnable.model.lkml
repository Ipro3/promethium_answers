
connection:"pmdevpresto"


explore: table1__699b8383_0826_455a_b080_c6535034a029 {

join: table2__5faf73b2_d89a_4a36_b85c_32612cb36175 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__699b8383_0826_455a_b080_c6535034a029.f1} = ${table2__5faf73b2_d89a_4a36_b85c_32612cb36175.f2} ;;
}
}


view: table1__699b8383_0826_455a_b080_c6535034a029 {
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


view: table2__5faf73b2_d89a_4a36_b85c_32612cb36175 {
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