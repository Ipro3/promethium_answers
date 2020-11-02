
connection:"pmdevpresto"


explore: table1__812974c7_a850_428f_8964_a8e60d47e525 {

join: table2__c86aaf26_f23a_41cf_ab5c_0d7fa40557f5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__812974c7_a850_428f_8964_a8e60d47e525.f1} = ${table2__c86aaf26_f23a_41cf_ab5c_0d7fa40557f5.f2} ;;
}
}


view: table2__c86aaf26_f23a_41cf_ab5c_0d7fa40557f5 {
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


view: table1__812974c7_a850_428f_8964_a8e60d47e525 {
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