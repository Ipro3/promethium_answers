
connection:"pmdevpresto"


explore: table1__2342285c_f8a6_4ec7_b1f5_e3afd63595ed {

join: table2__82a9532f_57be_4d07_8420_790d034f7898 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2342285c_f8a6_4ec7_b1f5_e3afd63595ed.f1} = ${table2__82a9532f_57be_4d07_8420_790d034f7898.f2} ;;
}
}


view: table2__82a9532f_57be_4d07_8420_790d034f7898 {
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


view: table1__2342285c_f8a6_4ec7_b1f5_e3afd63595ed {
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