
connection:"pmdevpresto"


explore: table1__285f31bc_d65f_47e2_8dc0_30cf4f9b1c1b {

join: table2__653ecb75_fbaf_4e59_a25f_992bcaf0b218 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__285f31bc_d65f_47e2_8dc0_30cf4f9b1c1b.f1} = ${table2__653ecb75_fbaf_4e59_a25f_992bcaf0b218.f2} ;;
}
}


view: table1__285f31bc_d65f_47e2_8dc0_30cf4f9b1c1b {
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


view: table2__653ecb75_fbaf_4e59_a25f_992bcaf0b218 {
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