
connection:"pmdevpresto"


explore: table1__78aeebb2_9d82_4048_8ce6_aea795f0e867 {

join: table2__c2a4961d_626e_4a31_b657_98f9db3ecc0a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__78aeebb2_9d82_4048_8ce6_aea795f0e867.f1} = ${table2__c2a4961d_626e_4a31_b657_98f9db3ecc0a.f2} ;;
}
}


view: table1__78aeebb2_9d82_4048_8ce6_aea795f0e867 {
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


view: table2__c2a4961d_626e_4a31_b657_98f9db3ecc0a {
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