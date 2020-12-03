
connection:"pmdevpresto"


explore: table1__5971f3fb_2fac_42f2_b037_ca35fc9f4e39 {

join: table2__171fc2ec_4214_42c6_9659_4a0a7ae41548 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__5971f3fb_2fac_42f2_b037_ca35fc9f4e39.f1} = ${table2__171fc2ec_4214_42c6_9659_4a0a7ae41548.f2} ;;
}
}


view: table2__171fc2ec_4214_42c6_9659_4a0a7ae41548 {
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


view: table1__5971f3fb_2fac_42f2_b037_ca35fc9f4e39 {
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