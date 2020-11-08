
connection:"pmdevpresto"


explore: table1__53f93617_3db8_48f9_985c_b5d08303d469 {

join: table2__0ad1d313_ddf9_478d_b8d9_6ba7fb49fba4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__53f93617_3db8_48f9_985c_b5d08303d469.f1} = ${table2__0ad1d313_ddf9_478d_b8d9_6ba7fb49fba4.f2} ;;
}
}


view: table2__0ad1d313_ddf9_478d_b8d9_6ba7fb49fba4 {
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


view: table1__53f93617_3db8_48f9_985c_b5d08303d469 {
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