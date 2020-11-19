
connection:"pmdevpresto"


explore: table1__674b89a7_ff15_4c50_a22d_5952d97a956d {

join: table2__ac09b48d_900c_4fd2_9c72_14764e3f9d09 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__674b89a7_ff15_4c50_a22d_5952d97a956d.f1} = ${table2__ac09b48d_900c_4fd2_9c72_14764e3f9d09.f2} ;;
}
}


view: table1__674b89a7_ff15_4c50_a22d_5952d97a956d {
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


view: table2__ac09b48d_900c_4fd2_9c72_14764e3f9d09 {
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