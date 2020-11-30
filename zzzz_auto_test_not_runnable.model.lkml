
connection:"pmdevpresto"


explore: table1__185ae586_ff43_4fdf_aeb0_9373a2f65e9b {

join: table2__55adcefa_e5f5_41e5_badb_b81d8a783c27 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__185ae586_ff43_4fdf_aeb0_9373a2f65e9b.f1} = ${table2__55adcefa_e5f5_41e5_badb_b81d8a783c27.f2} ;;
}
}


view: table2__55adcefa_e5f5_41e5_badb_b81d8a783c27 {
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


view: table1__185ae586_ff43_4fdf_aeb0_9373a2f65e9b {
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