
connection:"pmdevpresto"


explore: table1__6657c269_ef3f_41a4_9ecf_fe974f95ae40 {

join: table2__3918e0fb_0efb_4ff6_bd33_a4780cc0cf0e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6657c269_ef3f_41a4_9ecf_fe974f95ae40.f1} = ${table2__3918e0fb_0efb_4ff6_bd33_a4780cc0cf0e.f2} ;;
}
}


view: table2__3918e0fb_0efb_4ff6_bd33_a4780cc0cf0e {
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


view: table1__6657c269_ef3f_41a4_9ecf_fe974f95ae40 {
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