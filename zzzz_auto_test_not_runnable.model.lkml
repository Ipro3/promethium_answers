
connection:"pmdevpresto"


explore: table1__90d6051b_e10b_4546_aeaf_d034c6ee9007 {

join: table2__f16e9a6f_9096_41e4_b951_e2b378754588 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__90d6051b_e10b_4546_aeaf_d034c6ee9007.f1} = ${table2__f16e9a6f_9096_41e4_b951_e2b378754588.f2} ;;
}
}


view: table1__90d6051b_e10b_4546_aeaf_d034c6ee9007 {
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


view: table2__f16e9a6f_9096_41e4_b951_e2b378754588 {
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