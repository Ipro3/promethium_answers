
connection:"pmdevpresto"


explore: table1__214d8d06_f5e8_4c01_b6cb_8d0f21a46a51 {

join: table2__2bb11285_0614_4e48_93ed_310e87ab5483 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__214d8d06_f5e8_4c01_b6cb_8d0f21a46a51.f1} = ${table2__2bb11285_0614_4e48_93ed_310e87ab5483.f2} ;;
}
}


view: table2__2bb11285_0614_4e48_93ed_310e87ab5483 {
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


view: table1__214d8d06_f5e8_4c01_b6cb_8d0f21a46a51 {
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