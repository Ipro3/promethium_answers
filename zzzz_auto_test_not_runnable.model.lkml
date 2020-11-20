
connection:"pmdevpresto"


explore: table1__6f8dbde5_3680_4285_9e64_2e3539a7b288 {

join: table2__472d8f45_87b0_431a_85ed_80b68ea5d0a9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6f8dbde5_3680_4285_9e64_2e3539a7b288.f1} = ${table2__472d8f45_87b0_431a_85ed_80b68ea5d0a9.f2} ;;
}
}


view: table1__6f8dbde5_3680_4285_9e64_2e3539a7b288 {
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


view: table2__472d8f45_87b0_431a_85ed_80b68ea5d0a9 {
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