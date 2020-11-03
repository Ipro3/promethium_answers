
connection:"pmdevpresto"


explore: table1__c4497d78_7d5c_49c1_9331_3fdde91ae5ea {

join: table2__443c7bad_7be0_422e_8f00_3f1d47bf78b6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__c4497d78_7d5c_49c1_9331_3fdde91ae5ea.f1} = ${table2__443c7bad_7be0_422e_8f00_3f1d47bf78b6.f2} ;;
}
}


view: table2__443c7bad_7be0_422e_8f00_3f1d47bf78b6 {
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


view: table1__c4497d78_7d5c_49c1_9331_3fdde91ae5ea {
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