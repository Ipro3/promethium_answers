
connection:"pmdevpresto"


explore: table1__945414dc_e9dc_4697_a704_6f04ab93d26a {

join: table2__41ef2045_48b0_4e43_99d3_473847dc3b6f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__945414dc_e9dc_4697_a704_6f04ab93d26a.f1} = ${table2__41ef2045_48b0_4e43_99d3_473847dc3b6f.f2} ;;
}
}


view: table1__945414dc_e9dc_4697_a704_6f04ab93d26a {
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


view: table2__41ef2045_48b0_4e43_99d3_473847dc3b6f {
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