
connection:"pmdevpresto"


explore: table1__fd3c587c_ed38_4fd8_9386_54f9b83ab7b1 {

join: table2__43a3cd71_c77d_4329_be93_d9720892eea6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fd3c587c_ed38_4fd8_9386_54f9b83ab7b1.f1} = ${table2__43a3cd71_c77d_4329_be93_d9720892eea6.f2} ;;
}
}


view: table2__43a3cd71_c77d_4329_be93_d9720892eea6 {
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


view: table1__fd3c587c_ed38_4fd8_9386_54f9b83ab7b1 {
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