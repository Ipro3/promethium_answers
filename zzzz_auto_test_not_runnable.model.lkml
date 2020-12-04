
connection:"pmdevpresto"


explore: table1__d6e3cc6a_d051_4ad0_b275_53ce9627c8dd {

join: table2__bc720dfb_03f7_467f_a41b_849bc7b26239 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d6e3cc6a_d051_4ad0_b275_53ce9627c8dd.f1} = ${table2__bc720dfb_03f7_467f_a41b_849bc7b26239.f2} ;;
}
}


view: table1__d6e3cc6a_d051_4ad0_b275_53ce9627c8dd {
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


view: table2__bc720dfb_03f7_467f_a41b_849bc7b26239 {
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