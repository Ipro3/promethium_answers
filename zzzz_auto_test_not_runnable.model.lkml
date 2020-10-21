
connection:"pmdevpresto"


explore: table1__6ad7dd11_3935_4a6c_b19d_aed174cf9098 {

join: table2__834b8f45_879f_4a41_98cd_5a426199e469 {
 relationship: one_to_one
 sql_on: ${table1__6ad7dd11_3935_4a6c_b19d_aed174cf9098.f1} = ${table2__834b8f45_879f_4a41_98cd_5a426199e469.f2} ;;
}
}


view: table2__834b8f45_879f_4a41_98cd_5a426199e469 {
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


view: table1__6ad7dd11_3935_4a6c_b19d_aed174cf9098 {
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