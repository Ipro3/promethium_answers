
connection:"pmdevpresto"


explore: table1__ff4c66d9_e9e6_497f_8d68_87f341d6ce99 {

join: table2__cdf69a0f_3ccf_4b21_a18c_027d76fc4263 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ff4c66d9_e9e6_497f_8d68_87f341d6ce99.f1} = ${table2__cdf69a0f_3ccf_4b21_a18c_027d76fc4263.f2} ;;
}
}


view: table2__cdf69a0f_3ccf_4b21_a18c_027d76fc4263 {
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


view: table1__ff4c66d9_e9e6_497f_8d68_87f341d6ce99 {
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