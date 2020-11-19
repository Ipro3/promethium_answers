
connection:"pmdevpresto"


explore: table1__fd9b2690_59f4_4fdd_a7ce_b7eaa78adb7e {

join: table2__50a59c73_1e49_4479_8e62_9fa42a499d2d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fd9b2690_59f4_4fdd_a7ce_b7eaa78adb7e.f1} = ${table2__50a59c73_1e49_4479_8e62_9fa42a499d2d.f2} ;;
}
}


view: table2__50a59c73_1e49_4479_8e62_9fa42a499d2d {
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


view: table1__fd9b2690_59f4_4fdd_a7ce_b7eaa78adb7e {
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