
connection:"pmdevpresto"


explore: table1__0ffe4b23_cbe0_4dcc_9aa3_6968c20d2b44 {

join: table2__8cf8f565_6402_40f1_9984_222941296cd7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0ffe4b23_cbe0_4dcc_9aa3_6968c20d2b44.f1} = ${table2__8cf8f565_6402_40f1_9984_222941296cd7.f2} ;;
}
}


view: table1__0ffe4b23_cbe0_4dcc_9aa3_6968c20d2b44 {
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


view: table2__8cf8f565_6402_40f1_9984_222941296cd7 {
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