
connection:"pmdevpresto"


explore: table1__e2ce891a_e0a2_47da_921c_718bae63e7ac {

join: table2__4e3fe64c_d7f4_438a_990c_dad68253bc79 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e2ce891a_e0a2_47da_921c_718bae63e7ac.f1} = ${table2__4e3fe64c_d7f4_438a_990c_dad68253bc79.f2} ;;
}
}


view: table2__4e3fe64c_d7f4_438a_990c_dad68253bc79 {
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


view: table1__e2ce891a_e0a2_47da_921c_718bae63e7ac {
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