
connection:"pmdevpresto"


explore: table1__70585b91_9e40_43f5_82d9_3989b0bda0d7 {

join: table2__b0dc67a8_df88_434b_9961_71f98baced76 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__70585b91_9e40_43f5_82d9_3989b0bda0d7.f1} = ${table2__b0dc67a8_df88_434b_9961_71f98baced76.f2} ;;
}
}


view: table1__70585b91_9e40_43f5_82d9_3989b0bda0d7 {
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


view: table2__b0dc67a8_df88_434b_9961_71f98baced76 {
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