
connection:"pmdevpresto"


explore: table1__27c50090_c12c_4a8a_aa5d_157393b4897b {

join: table2__d5d1ed8c_567c_446a_b151_fd5b0d074e5a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__27c50090_c12c_4a8a_aa5d_157393b4897b.f1} = ${table2__d5d1ed8c_567c_446a_b151_fd5b0d074e5a.f2} ;;
}
}


view: table1__27c50090_c12c_4a8a_aa5d_157393b4897b {
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


view: table2__d5d1ed8c_567c_446a_b151_fd5b0d074e5a {
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