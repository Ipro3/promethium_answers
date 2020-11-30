
connection:"pmdevpresto"


explore: table1__575115a4_c4b4_485a_ba63_f60e6f995f0e {

join: table2__fc6135ed_e2dc_462d_ab4e_ee35f02686b7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__575115a4_c4b4_485a_ba63_f60e6f995f0e.f1} = ${table2__fc6135ed_e2dc_462d_ab4e_ee35f02686b7.f2} ;;
}
}


view: table2__fc6135ed_e2dc_462d_ab4e_ee35f02686b7 {
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


view: table1__575115a4_c4b4_485a_ba63_f60e6f995f0e {
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