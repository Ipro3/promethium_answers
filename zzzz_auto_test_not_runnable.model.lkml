
connection:"pmdevpresto"


explore: table1__ea8c26fb_7173_44ae_a927_193b9ac94258 {

join: table2__eda7c511_e174_40e0_9bc5_10c198b8e667 {
 relationship: one_to_one
 sql_on: ${table1__ea8c26fb_7173_44ae_a927_193b9ac94258.f1} = ${table2__eda7c511_e174_40e0_9bc5_10c198b8e667.f2} ;;
}
}


view: table2__eda7c511_e174_40e0_9bc5_10c198b8e667 {
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


view: table1__ea8c26fb_7173_44ae_a927_193b9ac94258 {
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