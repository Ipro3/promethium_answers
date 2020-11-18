
connection:"pmdevpresto"


explore: table1__77d41eb5_04d4_4dda_84ad_3f4f631382fa {

join: table2__beac0d86_f84b_4aad_8a3e_915fafb5ffdc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__77d41eb5_04d4_4dda_84ad_3f4f631382fa.f1} = ${table2__beac0d86_f84b_4aad_8a3e_915fafb5ffdc.f2} ;;
}
}


view: table2__beac0d86_f84b_4aad_8a3e_915fafb5ffdc {
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


view: table1__77d41eb5_04d4_4dda_84ad_3f4f631382fa {
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