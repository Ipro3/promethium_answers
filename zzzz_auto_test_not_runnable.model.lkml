
connection:"pmdevpresto"


explore: table1__54e65f97_a5bf_4db5_82f7_631f5ad2ee63 {

join: table2__c602d52c_087c_4b14_99d6_ef79fddaafa8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__54e65f97_a5bf_4db5_82f7_631f5ad2ee63.f1} = ${table2__c602d52c_087c_4b14_99d6_ef79fddaafa8.f2} ;;
}
}


view: table1__54e65f97_a5bf_4db5_82f7_631f5ad2ee63 {
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
}


view: table2__c602d52c_087c_4b14_99d6_ef79fddaafa8 {
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
}