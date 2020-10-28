
connection:"pmdevpresto"


explore: table1__e54f9900_7da3_4d0f_9e1e_fc96be66bbcd {

join: table2__153a4d68_e9e6_49c0_8087_e94913125ccc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e54f9900_7da3_4d0f_9e1e_fc96be66bbcd.f1} = ${table2__153a4d68_e9e6_49c0_8087_e94913125ccc.f2} ;;
}
}


view: table1__e54f9900_7da3_4d0f_9e1e_fc96be66bbcd {
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


view: table2__153a4d68_e9e6_49c0_8087_e94913125ccc {
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