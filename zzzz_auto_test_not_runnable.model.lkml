
connection:"pmdevpresto"


explore: table1__d62bcc15_b5e8_4822_bc1d_b5ec07da9a07 {

join: table2__479175b7_63ba_4324_a63b_f77e2017e929 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d62bcc15_b5e8_4822_bc1d_b5ec07da9a07.f1} = ${table2__479175b7_63ba_4324_a63b_f77e2017e929.f2} ;;
}
}


view: table1__d62bcc15_b5e8_4822_bc1d_b5ec07da9a07 {
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


view: table2__479175b7_63ba_4324_a63b_f77e2017e929 {
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