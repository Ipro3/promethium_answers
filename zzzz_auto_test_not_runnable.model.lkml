
connection:"pmdevpresto"


explore: table1__3a950df4_1984_4137_85b8_d18f7e2e0735 {

join: table2__dfbcf36d_0676_4b05_942b_30ff934e7cea {
 relationship: one_to_one
 sql_on: ${table1__3a950df4_1984_4137_85b8_d18f7e2e0735.f1} = ${table2__dfbcf36d_0676_4b05_942b_30ff934e7cea.f2} ;;
}
}


view: table2__dfbcf36d_0676_4b05_942b_30ff934e7cea {
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


view: table1__3a950df4_1984_4137_85b8_d18f7e2e0735 {
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