
connection:"pmdevpresto"


explore: table1__23751732_988e_42b0_a0c7_401a7db20151 {

join: table2__caf557cd_dedd_47ec_a7d2_79df751d7b16 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__23751732_988e_42b0_a0c7_401a7db20151.f1} = ${table2__caf557cd_dedd_47ec_a7d2_79df751d7b16.f2} ;;
}
}


view: table1__23751732_988e_42b0_a0c7_401a7db20151 {
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


view: table2__caf557cd_dedd_47ec_a7d2_79df751d7b16 {
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