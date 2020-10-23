
connection:"pmdevpresto"


explore: table1__9d696917_1d64_40c1_bd8c_c7b0208b8da5 {

join: table2__02119402_4d9d_4502_9372_5ca23d7ea135 {
 relationship: one_to_one
 sql_on: ${table1__9d696917_1d64_40c1_bd8c_c7b0208b8da5.f1} = ${table2__02119402_4d9d_4502_9372_5ca23d7ea135.f2} ;;
}
}


view: table1__9d696917_1d64_40c1_bd8c_c7b0208b8da5 {
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


view: table2__02119402_4d9d_4502_9372_5ca23d7ea135 {
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