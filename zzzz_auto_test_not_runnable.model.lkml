
connection:"pmdevpresto"


explore: table1__549e8384_e5e0_4eb1_a32e_f293ed4d4f50 {

join: table2__c3fd1686_105b_4566_9083_6ecb2886eac1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__549e8384_e5e0_4eb1_a32e_f293ed4d4f50.f1} = ${table2__c3fd1686_105b_4566_9083_6ecb2886eac1.f2} ;;
}
}


view: table2__c3fd1686_105b_4566_9083_6ecb2886eac1 {
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


view: table1__549e8384_e5e0_4eb1_a32e_f293ed4d4f50 {
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