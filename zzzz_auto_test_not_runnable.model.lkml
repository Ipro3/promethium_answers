
connection:"pmdevpresto"


explore: table1__022417af_05bd_4936_aaba_24ab14a4ffc6 {

join: table2__e675da7c_18d4_4eed_81ba_3844dc8bf412 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__022417af_05bd_4936_aaba_24ab14a4ffc6.f1} = ${table2__e675da7c_18d4_4eed_81ba_3844dc8bf412.f2} ;;
}
}


view: table2__e675da7c_18d4_4eed_81ba_3844dc8bf412 {
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


view: table1__022417af_05bd_4936_aaba_24ab14a4ffc6 {
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