
connection:"pmdevpresto"


explore: table1__6437549c_0e00_4b14_9f90_2f19430a3966 {

join: table2__5518d08d_2924_459c_916e_73c26266ffcb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6437549c_0e00_4b14_9f90_2f19430a3966.f1} = ${table2__5518d08d_2924_459c_916e_73c26266ffcb.f2} ;;
}
}


view: table2__5518d08d_2924_459c_916e_73c26266ffcb {
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


view: table1__6437549c_0e00_4b14_9f90_2f19430a3966 {
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