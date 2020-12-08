
connection:"pmdevpresto"


explore: table1__ca5a90cb_27df_4d82_a08e_bc1aa86ba3e4 {

join: table2__0a73bb4f_1a80_4631_9417_1c4c8829cf6d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ca5a90cb_27df_4d82_a08e_bc1aa86ba3e4.f1} = ${table2__0a73bb4f_1a80_4631_9417_1c4c8829cf6d.f2} ;;
}
}


view: table1__ca5a90cb_27df_4d82_a08e_bc1aa86ba3e4 {
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


view: table2__0a73bb4f_1a80_4631_9417_1c4c8829cf6d {
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