
connection:"pmdevpresto"


explore: table1__e35141ab_6c01_472d_b4e8_a4eb41c584ae {

join: table2__b3c52dea_2e03_428e_9df7_84b410b66ab2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e35141ab_6c01_472d_b4e8_a4eb41c584ae.f1} = ${table2__b3c52dea_2e03_428e_9df7_84b410b66ab2.f2} ;;
}
}


view: table2__b3c52dea_2e03_428e_9df7_84b410b66ab2 {
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


view: table1__e35141ab_6c01_472d_b4e8_a4eb41c584ae {
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