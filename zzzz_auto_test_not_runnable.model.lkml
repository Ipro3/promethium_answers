
connection:"pmdevpresto"


explore: table1__ed907df4_1c9c_44c6_8e01_850f295e0b50 {

join: table2__4642bfed_0d0f_40eb_9c0d_0a86f1376d15 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ed907df4_1c9c_44c6_8e01_850f295e0b50.f1} = ${table2__4642bfed_0d0f_40eb_9c0d_0a86f1376d15.f2} ;;
}
}


view: table1__ed907df4_1c9c_44c6_8e01_850f295e0b50 {
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


view: table2__4642bfed_0d0f_40eb_9c0d_0a86f1376d15 {
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