
connection:"pmdevpresto"


explore: table1__9ccba79b_3977_4915_9528_cf0ca6082fc7 {

join: table2__506e0ee9_6190_4074_ad18_9f904f7d641e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9ccba79b_3977_4915_9528_cf0ca6082fc7.f1} = ${table2__506e0ee9_6190_4074_ad18_9f904f7d641e.f2} ;;
}
}


view: table2__506e0ee9_6190_4074_ad18_9f904f7d641e {
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


view: table1__9ccba79b_3977_4915_9528_cf0ca6082fc7 {
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