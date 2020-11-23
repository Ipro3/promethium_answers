
connection:"pmdevpresto"


explore: table1__f59b7a28_47b8_45b8_bc21_25a918c6a5d6 {

join: table2__aed1d8d0_d60b_4c80_aa04_7958836b5db6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f59b7a28_47b8_45b8_bc21_25a918c6a5d6.f1} = ${table2__aed1d8d0_d60b_4c80_aa04_7958836b5db6.f2} ;;
}
}


view: table1__f59b7a28_47b8_45b8_bc21_25a918c6a5d6 {
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


view: table2__aed1d8d0_d60b_4c80_aa04_7958836b5db6 {
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