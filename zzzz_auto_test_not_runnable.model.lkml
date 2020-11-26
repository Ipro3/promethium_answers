
connection:"pmdevpresto"


explore: table1__6457416e_20fb_403e_b71e_4961a2f6e481 {

join: table2__cf8f7d28_33b9_48c3_bebc_4d67732d58c8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6457416e_20fb_403e_b71e_4961a2f6e481.f1} = ${table2__cf8f7d28_33b9_48c3_bebc_4d67732d58c8.f2} ;;
}
}


view: table2__cf8f7d28_33b9_48c3_bebc_4d67732d58c8 {
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


view: table1__6457416e_20fb_403e_b71e_4961a2f6e481 {
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