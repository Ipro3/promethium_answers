
connection:"pmdevpresto"


explore: table1__2e5168a5_9fe9_4ef9_bf80_4bf7c80a5bf4 {

join: table2__e90a583d_a30a_478c_9526_fb489f56d9ce {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2e5168a5_9fe9_4ef9_bf80_4bf7c80a5bf4.f1} = ${table2__e90a583d_a30a_478c_9526_fb489f56d9ce.f2} ;;
}
}


view: table1__2e5168a5_9fe9_4ef9_bf80_4bf7c80a5bf4 {
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


view: table2__e90a583d_a30a_478c_9526_fb489f56d9ce {
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