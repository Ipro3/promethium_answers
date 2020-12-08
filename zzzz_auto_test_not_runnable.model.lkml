
connection:"pmdevpresto"


explore: table1__52d89f86_8a27_4ac2_aa5f_6019a733570e {

join: table2__e58ddcc1_0c78_4b2e_bdc7_b58aa249e753 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__52d89f86_8a27_4ac2_aa5f_6019a733570e.f1} = ${table2__e58ddcc1_0c78_4b2e_bdc7_b58aa249e753.f2} ;;
}
}


view: table1__52d89f86_8a27_4ac2_aa5f_6019a733570e {
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


view: table2__e58ddcc1_0c78_4b2e_bdc7_b58aa249e753 {
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