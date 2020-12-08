
connection:"pmdevpresto"


explore: table1__be09f8a3_6cd3_474c_9061_dfbe52151510 {

join: table2__ab69a8e6_2ede_4054_a8c7_64988357b80f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__be09f8a3_6cd3_474c_9061_dfbe52151510.f1} = ${table2__ab69a8e6_2ede_4054_a8c7_64988357b80f.f2} ;;
}
}


view: table1__be09f8a3_6cd3_474c_9061_dfbe52151510 {
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


view: table2__ab69a8e6_2ede_4054_a8c7_64988357b80f {
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