
connection:"pmdevpresto"


explore: table1__628e330d_e803_4bc1_8168_df1d60c43db7 {

join: table2__f53ddd06_118c_41e0_962f_712586b18d44 {
 relationship: one_to_one
 sql_on: ${table1__628e330d_e803_4bc1_8168_df1d60c43db7.f1} = ${table2__f53ddd06_118c_41e0_962f_712586b18d44.f2} ;;
}
}


view: table2__f53ddd06_118c_41e0_962f_712586b18d44 {
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


view: table1__628e330d_e803_4bc1_8168_df1d60c43db7 {
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