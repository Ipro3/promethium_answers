
connection:"pmdevpresto"


explore: table1__a04a3f8e_06e5_4121_8748_caa3e01dc5d5 {

join: table2__ef833f95_718f_42e4_a9ed_c37841d33dad {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a04a3f8e_06e5_4121_8748_caa3e01dc5d5.f1} = ${table2__ef833f95_718f_42e4_a9ed_c37841d33dad.f2} ;;
}
}


view: table1__a04a3f8e_06e5_4121_8748_caa3e01dc5d5 {
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


view: table2__ef833f95_718f_42e4_a9ed_c37841d33dad {
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