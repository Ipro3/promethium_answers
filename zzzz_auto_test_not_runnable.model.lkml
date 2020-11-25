
connection:"pmdevpresto"


explore: table1__9571e5c9_17a9_4b64_a9de_9361b439cae6 {

join: table2__12e76dec_e7d6_4de1_841b_ffc5b0165da1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9571e5c9_17a9_4b64_a9de_9361b439cae6.f1} = ${table2__12e76dec_e7d6_4de1_841b_ffc5b0165da1.f2} ;;
}
}


view: table1__9571e5c9_17a9_4b64_a9de_9361b439cae6 {
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


view: table2__12e76dec_e7d6_4de1_841b_ffc5b0165da1 {
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