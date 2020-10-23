
connection:"pmdevpresto"


explore: table1__b04d14a0_173c_407e_8dc4_c461811800bb {

join: table2__c89a2319_ffe6_47c0_8dcc_bf5fa921ddb6 {
 relationship: one_to_one
 sql_on: ${table1__b04d14a0_173c_407e_8dc4_c461811800bb.f1} = ${table2__c89a2319_ffe6_47c0_8dcc_bf5fa921ddb6.f2} ;;
}
}


view: table1__b04d14a0_173c_407e_8dc4_c461811800bb {
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


view: table2__c89a2319_ffe6_47c0_8dcc_bf5fa921ddb6 {
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