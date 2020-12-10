
connection:"pmdevpresto"


explore: table1__1c6cf7be_d200_4db1_a058_7a8ab146f6a3 {

join: table2__5d0cd6ef_6349_477f_9c5f_ec35d88218c6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1c6cf7be_d200_4db1_a058_7a8ab146f6a3.f1} = ${table2__5d0cd6ef_6349_477f_9c5f_ec35d88218c6.f2} ;;
}
}


view: table2__5d0cd6ef_6349_477f_9c5f_ec35d88218c6 {
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


view: table1__1c6cf7be_d200_4db1_a058_7a8ab146f6a3 {
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