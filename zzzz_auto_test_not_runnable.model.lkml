
connection:"pmdevpresto"


explore: table1__18ae8a52_28df_42e1_836d_06de275d1dc4 {

join: table2__795989b3_c960_41d4_83d7_1248e0393c84 {
 relationship: one_to_one
 sql_on: ${table1__18ae8a52_28df_42e1_836d_06de275d1dc4.f1} = ${table2__795989b3_c960_41d4_83d7_1248e0393c84.f2} ;;
}
}


view: table2__795989b3_c960_41d4_83d7_1248e0393c84 {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: table1__18ae8a52_28df_42e1_836d_06de275d1dc4 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}