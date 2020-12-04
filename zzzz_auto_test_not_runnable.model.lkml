
connection:"pmdevpresto"


explore: table1__b69ca284_f9db_40c6_a483_d8aee01e59b3 {

join: table2__4ca106ed_55a1_4747_9654_d69f18fe864b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b69ca284_f9db_40c6_a483_d8aee01e59b3.f1} = ${table2__4ca106ed_55a1_4747_9654_d69f18fe864b.f2} ;;
}
}


view: table1__b69ca284_f9db_40c6_a483_d8aee01e59b3 {
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


view: table2__4ca106ed_55a1_4747_9654_d69f18fe864b {
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