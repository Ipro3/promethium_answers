
connection:"pmdevpresto"


explore: table1__377af42d_1141_4bb7_bded_fd40c61213f8 {

join: table2__3ba9e1cc_ae42_4847_a6ed_50e753aebb69 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__377af42d_1141_4bb7_bded_fd40c61213f8.f1} = ${table2__3ba9e1cc_ae42_4847_a6ed_50e753aebb69.f2} ;;
}
}


view: table1__377af42d_1141_4bb7_bded_fd40c61213f8 {
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


view: table2__3ba9e1cc_ae42_4847_a6ed_50e753aebb69 {
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