
connection:"pmdevpresto"


explore: table1__05f56c16_30ee_4f41_9419_771532a24f42 {

join: table2__a04361cb_fc83_45e9_959c_55bde2349dd0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__05f56c16_30ee_4f41_9419_771532a24f42.f1} = ${table2__a04361cb_fc83_45e9_959c_55bde2349dd0.f2} ;;
}
}


view: table1__05f56c16_30ee_4f41_9419_771532a24f42 {
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


view: table2__a04361cb_fc83_45e9_959c_55bde2349dd0 {
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