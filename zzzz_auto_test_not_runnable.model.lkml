
connection:"pmdevpresto"


explore: table1__74e97e22_d6df_434d_b8f8_f42adfa24f28 {

join: table2__fafefa88_55d9_4e6d_a895_cd48224352d4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__74e97e22_d6df_434d_b8f8_f42adfa24f28.f1} = ${table2__fafefa88_55d9_4e6d_a895_cd48224352d4.f2} ;;
}
}


view: table1__74e97e22_d6df_434d_b8f8_f42adfa24f28 {
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


view: table2__fafefa88_55d9_4e6d_a895_cd48224352d4 {
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