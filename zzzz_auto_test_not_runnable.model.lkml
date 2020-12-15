
connection:"pmdevpresto"


explore: table1__4c9d4e89_1ed0_410b_8fe5_45a284402f40 {

join: table2__e843cc67_b4b3_4d8b_8a63_7745b5bfcb14 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4c9d4e89_1ed0_410b_8fe5_45a284402f40.f1} = ${table2__e843cc67_b4b3_4d8b_8a63_7745b5bfcb14.f2} ;;
}
}


view: table1__4c9d4e89_1ed0_410b_8fe5_45a284402f40 {
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


view: table2__e843cc67_b4b3_4d8b_8a63_7745b5bfcb14 {
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