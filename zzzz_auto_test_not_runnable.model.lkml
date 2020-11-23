
connection:"pmdevpresto"


explore: table1__056297c1_d1d8_41cb_a080_84184ec369c9 {

join: table2__22f7388e_038a_462c_a666_4b72ddca1993 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__056297c1_d1d8_41cb_a080_84184ec369c9.f1} = ${table2__22f7388e_038a_462c_a666_4b72ddca1993.f2} ;;
}
}


view: table2__22f7388e_038a_462c_a666_4b72ddca1993 {
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


view: table1__056297c1_d1d8_41cb_a080_84184ec369c9 {
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