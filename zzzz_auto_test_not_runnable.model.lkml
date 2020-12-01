
connection:"pmdevpresto"


explore: table1__fc84d31c_76a1_435c_9ae0_547f33fc8e77 {

join: table2__42760967_499e_41a9_9ecc_d2f8abbbe644 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fc84d31c_76a1_435c_9ae0_547f33fc8e77.f1} = ${table2__42760967_499e_41a9_9ecc_d2f8abbbe644.f2} ;;
}
}


view: table1__fc84d31c_76a1_435c_9ae0_547f33fc8e77 {
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


view: table2__42760967_499e_41a9_9ecc_d2f8abbbe644 {
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