
connection:"pmdevpresto"


explore: table1__f31a80a6_539e_40f1_bee4_a2639f1a3078 {

join: table2__c0ff1786_e3a2_4e9b_ab95_1d273aa43448 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f31a80a6_539e_40f1_bee4_a2639f1a3078.f1} = ${table2__c0ff1786_e3a2_4e9b_ab95_1d273aa43448.f2} ;;
}
}


view: table2__c0ff1786_e3a2_4e9b_ab95_1d273aa43448 {
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


view: table1__f31a80a6_539e_40f1_bee4_a2639f1a3078 {
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