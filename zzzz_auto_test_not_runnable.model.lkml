
connection:"pmdevpresto"


explore: table1__e0f5d0f8_670f_4ac8_a25d_8352813eeb4d {

join: table2__a9c3de88_5663_430c_ae2c_8127eda21ef8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e0f5d0f8_670f_4ac8_a25d_8352813eeb4d.f1} = ${table2__a9c3de88_5663_430c_ae2c_8127eda21ef8.f2} ;;
}
}


view: table1__e0f5d0f8_670f_4ac8_a25d_8352813eeb4d {
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


view: table2__a9c3de88_5663_430c_ae2c_8127eda21ef8 {
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