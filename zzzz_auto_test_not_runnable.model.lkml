
connection:"pmdevpresto"


explore: table1__54bd2707_7154_4ce1_99e1_6e56ed8b09b8 {

join: table2__d61a6ec8_4b7c_4d22_8158_ea8c24ca8e42 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__54bd2707_7154_4ce1_99e1_6e56ed8b09b8.f1} = ${table2__d61a6ec8_4b7c_4d22_8158_ea8c24ca8e42.f2} ;;
}
}


view: table2__d61a6ec8_4b7c_4d22_8158_ea8c24ca8e42 {
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


view: table1__54bd2707_7154_4ce1_99e1_6e56ed8b09b8 {
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