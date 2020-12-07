
connection:"pmdevpresto"


explore: table1__7b878788_a0e2_453a_80b9_f2463a79fdb3 {

join: table2__dc61ba1e_abb4_46e8_8dfa_1cb444d8c86a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7b878788_a0e2_453a_80b9_f2463a79fdb3.f1} = ${table2__dc61ba1e_abb4_46e8_8dfa_1cb444d8c86a.f2} ;;
}
}


view: table1__7b878788_a0e2_453a_80b9_f2463a79fdb3 {
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


view: table2__dc61ba1e_abb4_46e8_8dfa_1cb444d8c86a {
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