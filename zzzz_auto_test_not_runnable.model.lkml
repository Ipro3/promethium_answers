
connection:"pmdevpresto"


explore: table1__3d32b45a_9f00_434d_b7b8_f5c847c82058 {

join: table2__386bbe2c_eb11_44b3_8860_48f7ed35b365 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3d32b45a_9f00_434d_b7b8_f5c847c82058.f1} = ${table2__386bbe2c_eb11_44b3_8860_48f7ed35b365.f2} ;;
}
}


view: table1__3d32b45a_9f00_434d_b7b8_f5c847c82058 {
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


view: table2__386bbe2c_eb11_44b3_8860_48f7ed35b365 {
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