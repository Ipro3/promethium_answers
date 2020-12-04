
connection:"pmdevpresto"


explore: table1__16886abb_7812_42bf_b582_b89b69739207 {

join: table2__0f07812b_bc01_4892_b350_bea4457d10f0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__16886abb_7812_42bf_b582_b89b69739207.f1} = ${table2__0f07812b_bc01_4892_b350_bea4457d10f0.f2} ;;
}
}


view: table1__16886abb_7812_42bf_b582_b89b69739207 {
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


view: table2__0f07812b_bc01_4892_b350_bea4457d10f0 {
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