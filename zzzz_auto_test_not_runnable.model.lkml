
connection:"pmdevpresto"


explore: table1__c1c09d85_deb5_40c1_a3f1_f39c5ef1644e {

join: table2__791c8fb8_c969_4bb6_a65f_9b7dc73fc9c3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c1c09d85_deb5_40c1_a3f1_f39c5ef1644e.f1} = ${table2__791c8fb8_c969_4bb6_a65f_9b7dc73fc9c3.f2} ;;
}
}


view: table1__c1c09d85_deb5_40c1_a3f1_f39c5ef1644e {
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


view: table2__791c8fb8_c969_4bb6_a65f_9b7dc73fc9c3 {
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