
connection:"pmdevpresto"


explore: table1__79ad3a35_c5b8_4e69_9931_07cb8f48762d {

join: table2__33e11e42_5c9c_4259_a8d3_ffe6fb665ba7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__79ad3a35_c5b8_4e69_9931_07cb8f48762d.f1} = ${table2__33e11e42_5c9c_4259_a8d3_ffe6fb665ba7.f2} ;;
}
}


view: table1__79ad3a35_c5b8_4e69_9931_07cb8f48762d {
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


view: table2__33e11e42_5c9c_4259_a8d3_ffe6fb665ba7 {
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