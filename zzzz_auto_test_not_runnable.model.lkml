
connection:"pmdevpresto"


explore: table1__56cf25e2_2f64_4159_8f5e_c2f39e00aeb2 {

join: table2__2d722698_9408_4069_9d66_d04229194e40 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__56cf25e2_2f64_4159_8f5e_c2f39e00aeb2.f1} = ${table2__2d722698_9408_4069_9d66_d04229194e40.f2} ;;
}
}


view: table1__56cf25e2_2f64_4159_8f5e_c2f39e00aeb2 {
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


view: table2__2d722698_9408_4069_9d66_d04229194e40 {
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