
connection:"pmdevpresto"


explore: table1__919b1cb0_5bb9_43a5_90fb_41a875666638 {

join: table2__3dd5057b_3016_4ae2_9a97_27a8b92258c5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__919b1cb0_5bb9_43a5_90fb_41a875666638.f1} = ${table2__3dd5057b_3016_4ae2_9a97_27a8b92258c5.f2} ;;
}
}


view: table1__919b1cb0_5bb9_43a5_90fb_41a875666638 {
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


view: table2__3dd5057b_3016_4ae2_9a97_27a8b92258c5 {
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