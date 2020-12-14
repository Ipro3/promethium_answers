
connection:"pmdevpresto"


explore: table1__3adb5a45_99c0_4ffa_b543_37228e679e83 {

join: table2__be718044_95a3_41ba_aed4_e9d17afc5f7c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3adb5a45_99c0_4ffa_b543_37228e679e83.f1} = ${table2__be718044_95a3_41ba_aed4_e9d17afc5f7c.f2} ;;
}
}


view: table2__be718044_95a3_41ba_aed4_e9d17afc5f7c {
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


view: table1__3adb5a45_99c0_4ffa_b543_37228e679e83 {
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