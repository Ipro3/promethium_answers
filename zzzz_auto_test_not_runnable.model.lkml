
connection:"pmdevpresto"


explore: table1__b7a5487d_20c8_43e7_be33_b04f31f8ed22 {

join: table2__64135d9e_ea41_4112_ab4c_4da1ed6cfd22 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b7a5487d_20c8_43e7_be33_b04f31f8ed22.f1} = ${table2__64135d9e_ea41_4112_ab4c_4da1ed6cfd22.f2} ;;
}
}


view: table1__b7a5487d_20c8_43e7_be33_b04f31f8ed22 {
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


view: table2__64135d9e_ea41_4112_ab4c_4da1ed6cfd22 {
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