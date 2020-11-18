
connection:"pmdevpresto"


explore: table1__688f08c9_ba61_477c_a917_0121a92cf27e {

join: table2__10874ee0_2668_46e7_bc4b_861b2b990a6f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__688f08c9_ba61_477c_a917_0121a92cf27e.f1} = ${table2__10874ee0_2668_46e7_bc4b_861b2b990a6f.f2} ;;
}
}


view: table2__10874ee0_2668_46e7_bc4b_861b2b990a6f {
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


view: table1__688f08c9_ba61_477c_a917_0121a92cf27e {
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