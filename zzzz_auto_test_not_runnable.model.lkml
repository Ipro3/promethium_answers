
connection:"pmdevpresto"


explore: table1__7577004e_ba64_4b7b_9ab4_de2d7dba806a {

join: table2__bf7c4362_4a07_443e_ade9_b0fdab206d24 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7577004e_ba64_4b7b_9ab4_de2d7dba806a.f1} = ${table2__bf7c4362_4a07_443e_ade9_b0fdab206d24.f2} ;;
}
}


view: table2__bf7c4362_4a07_443e_ade9_b0fdab206d24 {
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


view: table1__7577004e_ba64_4b7b_9ab4_de2d7dba806a {
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