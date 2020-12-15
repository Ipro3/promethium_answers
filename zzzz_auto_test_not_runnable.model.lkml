
connection:"pmdevpresto"


explore: table1__816f5f6c_affa_46f7_a1d9_f62e0006579c {

join: table2__99bb704d_88ef_4af5_9b8a_1a3f5994bafd {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__816f5f6c_affa_46f7_a1d9_f62e0006579c.f1} = ${table2__99bb704d_88ef_4af5_9b8a_1a3f5994bafd.f2} ;;
}
}


view: table2__99bb704d_88ef_4af5_9b8a_1a3f5994bafd {
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


view: table1__816f5f6c_affa_46f7_a1d9_f62e0006579c {
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