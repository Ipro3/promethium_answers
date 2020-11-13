
connection:"pmdevpresto"


explore: table1__826186a7_9c8c_427c_b175_a9f6661bdfdb {

join: table2__8c5af112_03bb_430e_afa5_77c4891e72cf {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__826186a7_9c8c_427c_b175_a9f6661bdfdb.f1} = ${table2__8c5af112_03bb_430e_afa5_77c4891e72cf.f2} ;;
}
}


view: table2__8c5af112_03bb_430e_afa5_77c4891e72cf {
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


view: table1__826186a7_9c8c_427c_b175_a9f6661bdfdb {
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