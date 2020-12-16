
connection:"pmdevpresto"


explore: table1__76098a0f_b5ac_448c_bb39_e7f8a6229034 {

join: table2__c67704b8_2a96_4e1e_938f_3727157643de {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__76098a0f_b5ac_448c_bb39_e7f8a6229034.f1} = ${table2__c67704b8_2a96_4e1e_938f_3727157643de.f2} ;;
}
}


view: table1__76098a0f_b5ac_448c_bb39_e7f8a6229034 {
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


view: table2__c67704b8_2a96_4e1e_938f_3727157643de {
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