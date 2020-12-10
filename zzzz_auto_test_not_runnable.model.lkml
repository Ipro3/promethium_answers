
connection:"pmdevpresto"


explore: table1__46f0ac6c_1257_4f02_ac56_9b20e57b597d {

join: table2__0fdd7de8_7979_4260_8126_c6416b4460b2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__46f0ac6c_1257_4f02_ac56_9b20e57b597d.f1} = ${table2__0fdd7de8_7979_4260_8126_c6416b4460b2.f2} ;;
}
}


view: table1__46f0ac6c_1257_4f02_ac56_9b20e57b597d {
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


view: table2__0fdd7de8_7979_4260_8126_c6416b4460b2 {
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