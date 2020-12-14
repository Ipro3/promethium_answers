
connection:"pmdevpresto"


explore: table1__b1527f48_6aed_4dab_abf0_67e4d693c7de {

join: table2__88b41985_ee33_47ca_b347_5a1c13eff9ae {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b1527f48_6aed_4dab_abf0_67e4d693c7de.f1} = ${table2__88b41985_ee33_47ca_b347_5a1c13eff9ae.f2} ;;
}
}


view: table2__88b41985_ee33_47ca_b347_5a1c13eff9ae {
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


view: table1__b1527f48_6aed_4dab_abf0_67e4d693c7de {
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