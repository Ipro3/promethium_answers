
connection:"pmdevpresto"


explore: table1__31ac7d79_8b2f_4a62_a6cf_83a31863c445 {

join: table2__b1be9491_e062_4d9e_958c_9bac95aed9f1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__31ac7d79_8b2f_4a62_a6cf_83a31863c445.f1} = ${table2__b1be9491_e062_4d9e_958c_9bac95aed9f1.f2} ;;
}
}


view: table1__31ac7d79_8b2f_4a62_a6cf_83a31863c445 {
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


view: table2__b1be9491_e062_4d9e_958c_9bac95aed9f1 {
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