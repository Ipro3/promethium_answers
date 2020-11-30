
connection:"pmdevpresto"


explore: table1__9680dd3c_e28a_4c14_ab6d_02e840f756d4 {

join: table2__27f9f4e5_1682_42c4_a59d_192cb4640763 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9680dd3c_e28a_4c14_ab6d_02e840f756d4.f1} = ${table2__27f9f4e5_1682_42c4_a59d_192cb4640763.f2} ;;
}
}


view: table1__9680dd3c_e28a_4c14_ab6d_02e840f756d4 {
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


view: table2__27f9f4e5_1682_42c4_a59d_192cb4640763 {
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