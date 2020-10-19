
connection:"pmdevpresto"


explore: table1__504b882d_41a3_4711_8305_9e2f3910a380 {

join: table2__1854f2d0_dfc8_43a5_8417_a3c4d810b30e {
 relationship: one_to_one
 sql_on: ${table1__504b882d_41a3_4711_8305_9e2f3910a380.f1} = ${table2__1854f2d0_dfc8_43a5_8417_a3c4d810b30e.f2} ;;
}
}


view: table2__1854f2d0_dfc8_43a5_8417_a3c4d810b30e {
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


view: table1__504b882d_41a3_4711_8305_9e2f3910a380 {
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