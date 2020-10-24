
connection:"pmdevpresto"


explore: table1__cc43bc49_f179_4538_a50b_85314746d5b2 {

join: table2__68452742_c8cd_49a5_8922_27c49c7c5228 {
 relationship: one_to_one
 sql_on: ${table1__cc43bc49_f179_4538_a50b_85314746d5b2.f1} = ${table2__68452742_c8cd_49a5_8922_27c49c7c5228.f2} ;;
}
}


view: table1__cc43bc49_f179_4538_a50b_85314746d5b2 {
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


view: table2__68452742_c8cd_49a5_8922_27c49c7c5228 {
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