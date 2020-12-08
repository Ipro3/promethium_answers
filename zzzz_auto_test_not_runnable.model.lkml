
connection:"pmdevpresto"


explore: table1__0d180d0a_6564_48f6_82e8_407938fac223 {

join: table2__c236148a_844c_4996_93b2_f2cc268bfe09 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0d180d0a_6564_48f6_82e8_407938fac223.f1} = ${table2__c236148a_844c_4996_93b2_f2cc268bfe09.f2} ;;
}
}


view: table2__c236148a_844c_4996_93b2_f2cc268bfe09 {
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


view: table1__0d180d0a_6564_48f6_82e8_407938fac223 {
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