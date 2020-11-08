
connection:"pmdevpresto"


explore: table1__9414551e_3a45_400e_8ebb_cb6e8b36d830 {

join: table2__d97fdefd_f1da_46e5_bcd8_d04ba2edd513 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9414551e_3a45_400e_8ebb_cb6e8b36d830.f1} = ${table2__d97fdefd_f1da_46e5_bcd8_d04ba2edd513.f2} ;;
}
}


view: table2__d97fdefd_f1da_46e5_bcd8_d04ba2edd513 {
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


view: table1__9414551e_3a45_400e_8ebb_cb6e8b36d830 {
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