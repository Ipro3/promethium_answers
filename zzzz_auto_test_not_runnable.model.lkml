
connection:"pmdevpresto"


explore: table1__457dfad7_9a12_481c_b5e9_963bc40b9444 {

join: table2__ed273024_f5fb_414b_bcb3_d5f977760222 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__457dfad7_9a12_481c_b5e9_963bc40b9444.f1} = ${table2__ed273024_f5fb_414b_bcb3_d5f977760222.f2} ;;
}
}


view: table1__457dfad7_9a12_481c_b5e9_963bc40b9444 {
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


view: table2__ed273024_f5fb_414b_bcb3_d5f977760222 {
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