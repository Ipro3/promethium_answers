
connection:"pmdevpresto"


explore: table1__2e87cc8b_e75f_4d8b_98ba_622a21316fb9 {

join: table2__00a71d92_e5fd_40ed_8073_215f2f40cda0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2e87cc8b_e75f_4d8b_98ba_622a21316fb9.f1} = ${table2__00a71d92_e5fd_40ed_8073_215f2f40cda0.f2} ;;
}
}


view: table2__00a71d92_e5fd_40ed_8073_215f2f40cda0 {
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


view: table1__2e87cc8b_e75f_4d8b_98ba_622a21316fb9 {
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