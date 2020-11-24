
connection:"pmdevpresto"


explore: table1__9a66b278_95ea_4285_8196_2c8d957919dc {

join: table2__b78b4a4c_f6d0_4d85_8ad8_5d1d2317b76e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9a66b278_95ea_4285_8196_2c8d957919dc.f1} = ${table2__b78b4a4c_f6d0_4d85_8ad8_5d1d2317b76e.f2} ;;
}
}


view: table1__9a66b278_95ea_4285_8196_2c8d957919dc {
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


view: table2__b78b4a4c_f6d0_4d85_8ad8_5d1d2317b76e {
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