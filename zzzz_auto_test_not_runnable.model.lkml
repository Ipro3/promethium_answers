
connection:"pmdevpresto"


explore: table1__61b7eb21_3142_44ba_a997_3d295e842509 {

join: table2__d84112a7_4b45_4ad4_bc75_d292e5155381 {
 relationship: one_to_one
 sql_on: ${table1__61b7eb21_3142_44ba_a997_3d295e842509.f1} = ${table2__d84112a7_4b45_4ad4_bc75_d292e5155381.f2} ;;
}
}


view: table1__61b7eb21_3142_44ba_a997_3d295e842509 {
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


view: table2__d84112a7_4b45_4ad4_bc75_d292e5155381 {
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