
connection:"pmdevpresto"


explore: table1__6b260b60_908b_4d3b_b4d0_7173d6dea904 {

join: table2__11756583_0aec_452b_8079_c0e4e1d0578f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6b260b60_908b_4d3b_b4d0_7173d6dea904.f1} = ${table2__11756583_0aec_452b_8079_c0e4e1d0578f.f2} ;;
}
}


view: table1__6b260b60_908b_4d3b_b4d0_7173d6dea904 {
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


view: table2__11756583_0aec_452b_8079_c0e4e1d0578f {
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