
connection:"pmdevpresto"


explore: table1__f9b403f0_b801_4f06_bc9d_3361325307ed {

join: table2__5ad5875b_cd0c_4c93_b4fa_6a8c4d5d1d95 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f9b403f0_b801_4f06_bc9d_3361325307ed.f1} = ${table2__5ad5875b_cd0c_4c93_b4fa_6a8c4d5d1d95.f2} ;;
}
}


view: table1__f9b403f0_b801_4f06_bc9d_3361325307ed {
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


view: table2__5ad5875b_cd0c_4c93_b4fa_6a8c4d5d1d95 {
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