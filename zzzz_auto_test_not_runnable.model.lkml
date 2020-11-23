
connection:"pmdevpresto"


explore: table1__9b3f7ad2_889c_4590_9e4e_a49df7bfb7e5 {

join: table2__2d769f77_3c7f_4e3f_aff9_30b6d29158a2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9b3f7ad2_889c_4590_9e4e_a49df7bfb7e5.f1} = ${table2__2d769f77_3c7f_4e3f_aff9_30b6d29158a2.f2} ;;
}
}


view: table2__2d769f77_3c7f_4e3f_aff9_30b6d29158a2 {
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


view: table1__9b3f7ad2_889c_4590_9e4e_a49df7bfb7e5 {
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