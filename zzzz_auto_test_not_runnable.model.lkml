
connection:"pmdevpresto"


explore: table1__98156069_623c_4cf5_8b59_4cf8af878bb4 {

join: table2__2faf26de_9314_4843_b77f_f91c8dcd6506 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__98156069_623c_4cf5_8b59_4cf8af878bb4.f1} = ${table2__2faf26de_9314_4843_b77f_f91c8dcd6506.f2} ;;
}
}


view: table1__98156069_623c_4cf5_8b59_4cf8af878bb4 {
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


view: table2__2faf26de_9314_4843_b77f_f91c8dcd6506 {
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