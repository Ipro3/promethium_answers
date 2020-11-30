
connection:"pmdevpresto"


explore: table1__8646fca5_506f_40fc_9ce6_b4b2e3d7c0ec {

join: table2__c7dd8c6e_124f_46f5_8bd6_17ac59227eb2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8646fca5_506f_40fc_9ce6_b4b2e3d7c0ec.f1} = ${table2__c7dd8c6e_124f_46f5_8bd6_17ac59227eb2.f2} ;;
}
}


view: table2__c7dd8c6e_124f_46f5_8bd6_17ac59227eb2 {
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


view: table1__8646fca5_506f_40fc_9ce6_b4b2e3d7c0ec {
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