
connection:"pmdevpresto"


explore: table1__f972abd4_e190_4121_aa35_349834ddd674 {

join: table2__c0b53445_8752_4d0a_ae19_9dbfdf92823e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f972abd4_e190_4121_aa35_349834ddd674.f1} = ${table2__c0b53445_8752_4d0a_ae19_9dbfdf92823e.f2} ;;
}
}


view: table1__f972abd4_e190_4121_aa35_349834ddd674 {
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


view: table2__c0b53445_8752_4d0a_ae19_9dbfdf92823e {
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