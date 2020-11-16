
connection:"pmdevpresto"


explore: table1__8dfe7cc0_218c_40d8_afb5_17afec978727 {

join: table2__d17601ed_ddb5_4838_b16b_153dffe37b6c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8dfe7cc0_218c_40d8_afb5_17afec978727.f1} = ${table2__d17601ed_ddb5_4838_b16b_153dffe37b6c.f2} ;;
}
}


view: table1__8dfe7cc0_218c_40d8_afb5_17afec978727 {
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


view: table2__d17601ed_ddb5_4838_b16b_153dffe37b6c {
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