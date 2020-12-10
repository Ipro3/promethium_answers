
connection:"pmdevpresto"


explore: table1__b274fa54_b2a7_43a7_9122_6c0f805fd1fc {

join: table2__eac639da_8311_477d_aac5_29ffe44a3b19 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b274fa54_b2a7_43a7_9122_6c0f805fd1fc.f1} = ${table2__eac639da_8311_477d_aac5_29ffe44a3b19.f2} ;;
}
}


view: table1__b274fa54_b2a7_43a7_9122_6c0f805fd1fc {
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


view: table2__eac639da_8311_477d_aac5_29ffe44a3b19 {
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