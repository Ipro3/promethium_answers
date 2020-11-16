
connection:"pmdevpresto"


explore: table1__bd86f94c_fd41_47a3_b627_c3698925f7f2 {

join: table2__51e2beca_b974_47df_86e6_7773859f3971 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bd86f94c_fd41_47a3_b627_c3698925f7f2.f1} = ${table2__51e2beca_b974_47df_86e6_7773859f3971.f2} ;;
}
}


view: table2__51e2beca_b974_47df_86e6_7773859f3971 {
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


view: table1__bd86f94c_fd41_47a3_b627_c3698925f7f2 {
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