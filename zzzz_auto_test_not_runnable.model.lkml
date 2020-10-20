
connection:"pmdevpresto"


explore: table1__3230de05_45de_42e1_8efb_0b67cd205d6c {

join: table2__259dc7c0_231c_4a04_9b6d_cfd806729cfe {
 relationship: one_to_one
 sql_on: ${table1__3230de05_45de_42e1_8efb_0b67cd205d6c.f1} = ${table2__259dc7c0_231c_4a04_9b6d_cfd806729cfe.f2} ;;
}
}


view: table1__3230de05_45de_42e1_8efb_0b67cd205d6c {
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


view: table2__259dc7c0_231c_4a04_9b6d_cfd806729cfe {
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