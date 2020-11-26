
connection:"pmdevpresto"


explore: table1__cca5ac51_7128_42a6_b88d_ae53a0802426 {

join: table2__042e2791_83fe_4a44_9abf_955c383c4719 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__cca5ac51_7128_42a6_b88d_ae53a0802426.f1} = ${table2__042e2791_83fe_4a44_9abf_955c383c4719.f2} ;;
}
}


view: table1__cca5ac51_7128_42a6_b88d_ae53a0802426 {
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


view: table2__042e2791_83fe_4a44_9abf_955c383c4719 {
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