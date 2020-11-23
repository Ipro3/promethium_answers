
connection:"pmdevpresto"


explore: table1__dbde8e1f_3c36_47c4_84f4_f3954045e61f {

join: table2__2dd0ccdb_b317_47cb_8fee_74e2567c7744 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__dbde8e1f_3c36_47c4_84f4_f3954045e61f.f1} = ${table2__2dd0ccdb_b317_47cb_8fee_74e2567c7744.f2} ;;
}
}


view: table2__2dd0ccdb_b317_47cb_8fee_74e2567c7744 {
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


view: table1__dbde8e1f_3c36_47c4_84f4_f3954045e61f {
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