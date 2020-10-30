
connection:"pmdevpresto"


explore: table1__799c734f_04e9_4c28_9e4f_e957a3e44856 {

join: table2__25573283_bc34_4114_b6b0_e0ddce325728 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__799c734f_04e9_4c28_9e4f_e957a3e44856.f1} = ${table2__25573283_bc34_4114_b6b0_e0ddce325728.f2} ;;
}
}


view: table1__799c734f_04e9_4c28_9e4f_e957a3e44856 {
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


view: table2__25573283_bc34_4114_b6b0_e0ddce325728 {
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