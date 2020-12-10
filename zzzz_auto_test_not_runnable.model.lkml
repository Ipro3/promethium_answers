
connection:"pmdevpresto"


explore: table1__e1bed282_c759_42e0_bb2b_92db60909d02 {

join: table2__c7b56087_9a13_4401_883b_9a0cf6c679fe {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e1bed282_c759_42e0_bb2b_92db60909d02.f1} = ${table2__c7b56087_9a13_4401_883b_9a0cf6c679fe.f2} ;;
}
}


view: table2__c7b56087_9a13_4401_883b_9a0cf6c679fe {
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


view: table1__e1bed282_c759_42e0_bb2b_92db60909d02 {
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