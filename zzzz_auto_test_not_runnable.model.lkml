
connection:"pmdevpresto"


explore: table1__bc408018_599e_4983_85dd_421723d30804 {

join: table2__9e7b124c_e3e1_49d1_8eeb_04b2d69bb8bb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bc408018_599e_4983_85dd_421723d30804.f1} = ${table2__9e7b124c_e3e1_49d1_8eeb_04b2d69bb8bb.f2} ;;
}
}


view: table1__bc408018_599e_4983_85dd_421723d30804 {
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


view: table2__9e7b124c_e3e1_49d1_8eeb_04b2d69bb8bb {
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