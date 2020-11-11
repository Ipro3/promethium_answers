
connection:"pmdevpresto"


explore: table1__c244994c_7511_43b6_9dd8_299518c60a86 {

join: table2__96045d5c_652a_4753_82dd_91c13a51b54d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c244994c_7511_43b6_9dd8_299518c60a86.f1} = ${table2__96045d5c_652a_4753_82dd_91c13a51b54d.f2} ;;
}
}


view: table2__96045d5c_652a_4753_82dd_91c13a51b54d {
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


view: table1__c244994c_7511_43b6_9dd8_299518c60a86 {
sql_table_name:catalog1.db1.table1 ;;
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