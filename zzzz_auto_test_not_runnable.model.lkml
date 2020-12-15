
connection:"pmdevpresto"


explore: table1__4ed774ec_1df4_4bb2_a494_d468282166ad {

join: table2__6dabcda1_4b5f_4cf2_95b1_d90674bd76e9 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4ed774ec_1df4_4bb2_a494_d468282166ad.f1} = ${table2__6dabcda1_4b5f_4cf2_95b1_d90674bd76e9.f2} ;;
}
}


view: table2__6dabcda1_4b5f_4cf2_95b1_d90674bd76e9 {
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


view: table1__4ed774ec_1df4_4bb2_a494_d468282166ad {
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