
connection:"pmdevpresto"


explore: table1__70ea0509_2ea6_47dc_ad35_d3b19838f3d3 {

join: table2__6d3b883c_940a_404e_9dcb_e299b8606422 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__70ea0509_2ea6_47dc_ad35_d3b19838f3d3.f1} = ${table2__6d3b883c_940a_404e_9dcb_e299b8606422.f2} ;;
}
}


view: table1__70ea0509_2ea6_47dc_ad35_d3b19838f3d3 {
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


view: table2__6d3b883c_940a_404e_9dcb_e299b8606422 {
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