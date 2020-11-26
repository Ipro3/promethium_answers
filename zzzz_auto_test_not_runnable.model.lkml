
connection:"pmdevpresto"


explore: table1__a445b0a9_b7c8_46dd_bdda_84ba52c54d4b {

join: table2__327d352e_fdc6_4838_b68b_ca8ac614169b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a445b0a9_b7c8_46dd_bdda_84ba52c54d4b.f1} = ${table2__327d352e_fdc6_4838_b68b_ca8ac614169b.f2} ;;
}
}


view: table1__a445b0a9_b7c8_46dd_bdda_84ba52c54d4b {
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


view: table2__327d352e_fdc6_4838_b68b_ca8ac614169b {
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