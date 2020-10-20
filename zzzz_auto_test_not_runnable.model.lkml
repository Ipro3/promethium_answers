
connection:"pmdevpresto"


explore: table1__c605cb61_8f76_4618_8cdc_a82dfca4f1da {

join: table2__e3df22c4_9e1c_4fd3_a5ce_679af16c588f {
 relationship: one_to_one
 sql_on: ${table1__c605cb61_8f76_4618_8cdc_a82dfca4f1da.f1} = ${table2__e3df22c4_9e1c_4fd3_a5ce_679af16c588f.f2} ;;
}
}


view: table1__c605cb61_8f76_4618_8cdc_a82dfca4f1da {
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


view: table2__e3df22c4_9e1c_4fd3_a5ce_679af16c588f {
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