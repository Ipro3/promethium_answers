
connection:"pmdevpresto"


explore: table1__8ebd5f11_a428_487c_8673_c3ae370ca06b {

join: table2__9a0c46ce_2b98_484f_9ede_e3549153970d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8ebd5f11_a428_487c_8673_c3ae370ca06b.f1} = ${table2__9a0c46ce_2b98_484f_9ede_e3549153970d.f2} ;;
}
}


view: table2__9a0c46ce_2b98_484f_9ede_e3549153970d {
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


view: table1__8ebd5f11_a428_487c_8673_c3ae370ca06b {
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