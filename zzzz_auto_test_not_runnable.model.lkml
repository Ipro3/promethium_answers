
connection:"pmdevpresto"


explore: table1__b8193545_8906_4032_bc31_5aecd84bbecf {

join: table2__bbd63c8a_4030_4202_8730_ac6d73f25ff5 {
 relationship: one_to_one
 sql_on: ${table1__b8193545_8906_4032_bc31_5aecd84bbecf.f1} = ${table2__bbd63c8a_4030_4202_8730_ac6d73f25ff5.f2} ;;
}
}


view: table2__bbd63c8a_4030_4202_8730_ac6d73f25ff5 {
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


view: table1__b8193545_8906_4032_bc31_5aecd84bbecf {
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