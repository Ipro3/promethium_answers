
connection:"pmdevpresto"


explore: table1__20a007a4_cd07_4a67_9d7f_31e06634e15a {

join: table2__864bdaf3_f944_4d0c_8ce7_ad0a10c365d7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__20a007a4_cd07_4a67_9d7f_31e06634e15a.f1} = ${table2__864bdaf3_f944_4d0c_8ce7_ad0a10c365d7.f2} ;;
}
}


view: table1__20a007a4_cd07_4a67_9d7f_31e06634e15a {
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


view: table2__864bdaf3_f944_4d0c_8ce7_ad0a10c365d7 {
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