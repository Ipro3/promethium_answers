
connection:"pmdevpresto"


explore: table1__487288ba_b1c1_4fb6_b793_450340956e6e {

join: table2__6ea5a4b0_8041_4a9b_a3f5_94e7dbd40f00 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__487288ba_b1c1_4fb6_b793_450340956e6e.f1} = ${table2__6ea5a4b0_8041_4a9b_a3f5_94e7dbd40f00.f2} ;;
}
}


view: table1__487288ba_b1c1_4fb6_b793_450340956e6e {
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


view: table2__6ea5a4b0_8041_4a9b_a3f5_94e7dbd40f00 {
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