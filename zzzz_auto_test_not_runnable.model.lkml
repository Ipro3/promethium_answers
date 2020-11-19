
connection:"pmdevpresto"


explore: table1__66f52f0a_3ccc_472f_8e4a_d21a56549c77 {

join: table2__4a4ecff8_26e0_448c_b696_1b2b43070e9f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__66f52f0a_3ccc_472f_8e4a_d21a56549c77.f1} = ${table2__4a4ecff8_26e0_448c_b696_1b2b43070e9f.f2} ;;
}
}


view: table1__66f52f0a_3ccc_472f_8e4a_d21a56549c77 {
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


view: table2__4a4ecff8_26e0_448c_b696_1b2b43070e9f {
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