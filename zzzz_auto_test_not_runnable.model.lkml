
connection:"pmdevpresto"


explore: table1__25f74bfb_8c61_4ab0_924e_2471358fc20d {

join: table2__c9a5bbbd_057e_4888_8c5e_17f2f125321d {
 relationship: one_to_one
 sql_on: ${table1__25f74bfb_8c61_4ab0_924e_2471358fc20d.f1} = ${table2__c9a5bbbd_057e_4888_8c5e_17f2f125321d.f2} ;;
}
}


view: table1__25f74bfb_8c61_4ab0_924e_2471358fc20d {
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


view: table2__c9a5bbbd_057e_4888_8c5e_17f2f125321d {
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