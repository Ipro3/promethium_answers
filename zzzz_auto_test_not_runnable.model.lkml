
connection:"pmdevpresto"


explore: table1__a6656741_3086_4144_b23d_2ac58b5f84de {

join: table2__6e6256f2_003e_4981_8b4c_8782553cb509 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a6656741_3086_4144_b23d_2ac58b5f84de.f1} = ${table2__6e6256f2_003e_4981_8b4c_8782553cb509.f2} ;;
}
}


view: table1__a6656741_3086_4144_b23d_2ac58b5f84de {
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


view: table2__6e6256f2_003e_4981_8b4c_8782553cb509 {
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