
connection:"pmdevpresto"


explore: table1__d95221dc_fe9d_4343_ad15_ac5f5a64ace6 {

join: table2__caa33cbf_51de_4cf2_9bf7_40a6aa208d40 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d95221dc_fe9d_4343_ad15_ac5f5a64ace6.f1} = ${table2__caa33cbf_51de_4cf2_9bf7_40a6aa208d40.f2} ;;
}
}


view: table1__d95221dc_fe9d_4343_ad15_ac5f5a64ace6 {
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


view: table2__caa33cbf_51de_4cf2_9bf7_40a6aa208d40 {
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