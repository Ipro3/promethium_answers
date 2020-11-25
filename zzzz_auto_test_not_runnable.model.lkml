
connection:"pmdevpresto"


explore: table1__a85f6ce9_9027_4efd_8f38_3f796a5477cc {

join: table2__c18d191a_eb70_4fac_8c24_4d0f8d2075f1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a85f6ce9_9027_4efd_8f38_3f796a5477cc.f1} = ${table2__c18d191a_eb70_4fac_8c24_4d0f8d2075f1.f2} ;;
}
}


view: table1__a85f6ce9_9027_4efd_8f38_3f796a5477cc {
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


view: table2__c18d191a_eb70_4fac_8c24_4d0f8d2075f1 {
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