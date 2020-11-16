
connection:"pmdevpresto"


explore: table1__2d0a1dc0_629a_4676_bc44_8dd0fcccc4a0 {

join: table2__f1b9ec83_040b_4e21_b067_db01ac908aad {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2d0a1dc0_629a_4676_bc44_8dd0fcccc4a0.f1} = ${table2__f1b9ec83_040b_4e21_b067_db01ac908aad.f2} ;;
}
}


view: table1__2d0a1dc0_629a_4676_bc44_8dd0fcccc4a0 {
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


view: table2__f1b9ec83_040b_4e21_b067_db01ac908aad {
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