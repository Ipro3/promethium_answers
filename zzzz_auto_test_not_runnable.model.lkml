
connection:"pmdevpresto"


explore: table1__8e083454_a19f_4e61_81d0_6df7201858e9 {

join: table2__36748b01_e809_4ed5_bad9_a9b720db9fa4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8e083454_a19f_4e61_81d0_6df7201858e9.f1} = ${table2__36748b01_e809_4ed5_bad9_a9b720db9fa4.f2} ;;
}
}


view: table1__8e083454_a19f_4e61_81d0_6df7201858e9 {
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


view: table2__36748b01_e809_4ed5_bad9_a9b720db9fa4 {
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