
connection:"pmdevpresto"


explore: table1__50bb30fa_502b_463c_9759_b8dae5778957 {

join: table2__b56c9637_eaa7_411b_b16a_2303ec098aa0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__50bb30fa_502b_463c_9759_b8dae5778957.f1} = ${table2__b56c9637_eaa7_411b_b16a_2303ec098aa0.f2} ;;
}
}


view: table2__b56c9637_eaa7_411b_b16a_2303ec098aa0 {
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


view: table1__50bb30fa_502b_463c_9759_b8dae5778957 {
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