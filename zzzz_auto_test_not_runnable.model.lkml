
connection:"pmdevpresto"


explore: table1__61938583_88f2_45c9_8fab_78da5aeabfb8 {

join: table2__f1d02187_9b75_42c4_a202_f46505c96000 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__61938583_88f2_45c9_8fab_78da5aeabfb8.f1} = ${table2__f1d02187_9b75_42c4_a202_f46505c96000.f2} ;;
}
}


view: table1__61938583_88f2_45c9_8fab_78da5aeabfb8 {
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


view: table2__f1d02187_9b75_42c4_a202_f46505c96000 {
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