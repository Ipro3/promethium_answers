
connection:"pmdevpresto"


explore: table1__ce768a3e_2d76_41bb_801e_68e4a828d2f0 {

join: table2__384185a6_f9b4_4661_8c7b_de9aaea55438 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ce768a3e_2d76_41bb_801e_68e4a828d2f0.f1} = ${table2__384185a6_f9b4_4661_8c7b_de9aaea55438.f2} ;;
}
}


view: table2__384185a6_f9b4_4661_8c7b_de9aaea55438 {
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


view: table1__ce768a3e_2d76_41bb_801e_68e4a828d2f0 {
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