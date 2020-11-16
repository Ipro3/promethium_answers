
connection:"pmdevpresto"


explore: table1__1d0a3924_f165_43de_a23d_5edac77795b1 {

join: table2__345d8014_ddae_4b76_a93f_f0fe8909b82c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1d0a3924_f165_43de_a23d_5edac77795b1.f1} = ${table2__345d8014_ddae_4b76_a93f_f0fe8909b82c.f2} ;;
}
}


view: table2__345d8014_ddae_4b76_a93f_f0fe8909b82c {
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


view: table1__1d0a3924_f165_43de_a23d_5edac77795b1 {
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