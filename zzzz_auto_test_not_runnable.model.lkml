
connection:"pmdevpresto"


explore: table1__df71b516_892b_4da3_99e4_8302a6135f3e {

join: table2__5cf88218_3647_4040_bc56_7b6378537609 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__df71b516_892b_4da3_99e4_8302a6135f3e.f1} = ${table2__5cf88218_3647_4040_bc56_7b6378537609.f2} ;;
}
}


view: table2__5cf88218_3647_4040_bc56_7b6378537609 {
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


view: table1__df71b516_892b_4da3_99e4_8302a6135f3e {
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