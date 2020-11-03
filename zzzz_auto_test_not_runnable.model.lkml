
connection:"pmdevpresto"


explore: table1__4cf8ae47_f48b_4a3c_805f_108b3d4ea8e2 {

join: table2__4d07ce4d_d5b6_4049_a181_ea300ed8e433 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4cf8ae47_f48b_4a3c_805f_108b3d4ea8e2.f1} = ${table2__4d07ce4d_d5b6_4049_a181_ea300ed8e433.f2} ;;
}
}


view: table1__4cf8ae47_f48b_4a3c_805f_108b3d4ea8e2 {
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


view: table2__4d07ce4d_d5b6_4049_a181_ea300ed8e433 {
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