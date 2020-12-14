
connection:"pmdevpresto"


explore: table1__f78d1982_01c9_4df5_89b1_0275855c64f5 {

join: table2__50818dbc_a8c3_40bb_a3ae_86c63fc9027d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f78d1982_01c9_4df5_89b1_0275855c64f5.f1} = ${table2__50818dbc_a8c3_40bb_a3ae_86c63fc9027d.f2} ;;
}
}


view: table1__f78d1982_01c9_4df5_89b1_0275855c64f5 {
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


view: table2__50818dbc_a8c3_40bb_a3ae_86c63fc9027d {
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