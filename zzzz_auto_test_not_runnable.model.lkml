
connection:"pmdevpresto"


explore: table1__7067ea9f_2e46_4db9_8fd5_d097b7620c9f {

join: table2__f0dfdd47_8196_440f_80a5_4c50758ab099 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7067ea9f_2e46_4db9_8fd5_d097b7620c9f.f1} = ${table2__f0dfdd47_8196_440f_80a5_4c50758ab099.f2} ;;
}
}


view: table1__7067ea9f_2e46_4db9_8fd5_d097b7620c9f {
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


view: table2__f0dfdd47_8196_440f_80a5_4c50758ab099 {
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