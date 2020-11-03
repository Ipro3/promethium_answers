
connection:"pmdevpresto"


explore: table1__d82f7f83_1b44_4ffe_99df_f5bfdc68da3d {

join: table2__1a0a98fd_9087_41e6_bbbd_00480dfbc240 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d82f7f83_1b44_4ffe_99df_f5bfdc68da3d.f1} = ${table2__1a0a98fd_9087_41e6_bbbd_00480dfbc240.f2} ;;
}
}


view: table2__1a0a98fd_9087_41e6_bbbd_00480dfbc240 {
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


view: table1__d82f7f83_1b44_4ffe_99df_f5bfdc68da3d {
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