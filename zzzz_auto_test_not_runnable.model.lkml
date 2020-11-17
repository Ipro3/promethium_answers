
connection:"pmdevpresto"


explore: table1__61bf3311_44ac_4c1b_bad7_96655c80a273 {

join: table2__a620346c_14fc_4d00_a113_05f00a75104d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__61bf3311_44ac_4c1b_bad7_96655c80a273.f1} = ${table2__a620346c_14fc_4d00_a113_05f00a75104d.f2} ;;
}
}


view: table2__a620346c_14fc_4d00_a113_05f00a75104d {
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


view: table1__61bf3311_44ac_4c1b_bad7_96655c80a273 {
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