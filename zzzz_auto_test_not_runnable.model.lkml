
connection:"pmdevpresto"


explore: table1__91ac9301_19ae_49a9_b8d0_9df078f3333c {

join: table2__8776a68d_4b99_4b8e_8c40_58a59b341057 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__91ac9301_19ae_49a9_b8d0_9df078f3333c.f1} = ${table2__8776a68d_4b99_4b8e_8c40_58a59b341057.f2} ;;
}
}


view: table2__8776a68d_4b99_4b8e_8c40_58a59b341057 {
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


view: table1__91ac9301_19ae_49a9_b8d0_9df078f3333c {
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