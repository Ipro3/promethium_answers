
connection:"pmdevpresto"


explore: table1__47be164e_a8b1_4590_af09_ccb61158fe77 {

join: table2__69417b00_70e1_4c91_8dfb_c46dc77e25e0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__47be164e_a8b1_4590_af09_ccb61158fe77.f1} = ${table2__69417b00_70e1_4c91_8dfb_c46dc77e25e0.f2} ;;
}
}


view: table1__47be164e_a8b1_4590_af09_ccb61158fe77 {
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


view: table2__69417b00_70e1_4c91_8dfb_c46dc77e25e0 {
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