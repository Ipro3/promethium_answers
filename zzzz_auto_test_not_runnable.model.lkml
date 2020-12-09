
connection:"pmdevpresto"


explore: table1__e29aaa18_a996_4cfc_b9d0_b1b07ebd372f {

join: table2__9ce54acb_967c_47d6_b345_30cf8414eea8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e29aaa18_a996_4cfc_b9d0_b1b07ebd372f.f1} = ${table2__9ce54acb_967c_47d6_b345_30cf8414eea8.f2} ;;
}
}


view: table2__9ce54acb_967c_47d6_b345_30cf8414eea8 {
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


view: table1__e29aaa18_a996_4cfc_b9d0_b1b07ebd372f {
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