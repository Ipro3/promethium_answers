
connection:"pmdevpresto"


explore: table1__fb8a23a7_e88f_4969_939a_41b83c3394b5 {

join: table2__c0172e26_47e6_4f81_aa6d_d88905170fc1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fb8a23a7_e88f_4969_939a_41b83c3394b5.f1} = ${table2__c0172e26_47e6_4f81_aa6d_d88905170fc1.f2} ;;
}
}


view: table1__fb8a23a7_e88f_4969_939a_41b83c3394b5 {
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


view: table2__c0172e26_47e6_4f81_aa6d_d88905170fc1 {
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