
connection:"pmdevpresto"


explore: table1__67bf4993_c8bb_4cac_9fcf_f342178e7b7a {

join: table2__fcd20638_b6e3_4acb_9959_03d099a23c02 {
 relationship: one_to_one
 sql_on: ${table1__67bf4993_c8bb_4cac_9fcf_f342178e7b7a.f1} = ${table2__fcd20638_b6e3_4acb_9959_03d099a23c02.f2} ;;
}
}


view: table1__67bf4993_c8bb_4cac_9fcf_f342178e7b7a {
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


view: table2__fcd20638_b6e3_4acb_9959_03d099a23c02 {
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