
connection:"pmdevpresto"


explore: table1__baf6fd3c_c6e9_4c13_921d_63b6cd9ade5a {

join: table2__c47383ca_d9de_484c_b510_95f915a5f2b5 {
 relationship: one_to_one
 sql_on: ${table1__baf6fd3c_c6e9_4c13_921d_63b6cd9ade5a.f1} = ${table2__c47383ca_d9de_484c_b510_95f915a5f2b5.f2} ;;
}
}


view: table1__baf6fd3c_c6e9_4c13_921d_63b6cd9ade5a {
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


view: table2__c47383ca_d9de_484c_b510_95f915a5f2b5 {
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