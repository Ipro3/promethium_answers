
connection:"pmdevpresto"


explore: table1__cf1546f5_1c6d_4d8f_8d79_310a20e3a290 {

join: table2__8b8f202b_ca74_48d8_ba12_e57ba2a63f8c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__cf1546f5_1c6d_4d8f_8d79_310a20e3a290.f1} = ${table2__8b8f202b_ca74_48d8_ba12_e57ba2a63f8c.f2} ;;
}
}


view: table2__8b8f202b_ca74_48d8_ba12_e57ba2a63f8c {
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


view: table1__cf1546f5_1c6d_4d8f_8d79_310a20e3a290 {
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