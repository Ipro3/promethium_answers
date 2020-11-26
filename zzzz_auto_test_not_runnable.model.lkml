
connection:"pmdevpresto"


explore: table1__87b886fb_2490_4d2a_9747_025394902a9c {

join: table2__d060ed9f_be45_4df4_a81d_1536d8971112 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__87b886fb_2490_4d2a_9747_025394902a9c.f1} = ${table2__d060ed9f_be45_4df4_a81d_1536d8971112.f2} ;;
}
}


view: table1__87b886fb_2490_4d2a_9747_025394902a9c {
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


view: table2__d060ed9f_be45_4df4_a81d_1536d8971112 {
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