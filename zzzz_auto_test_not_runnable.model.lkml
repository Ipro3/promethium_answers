
connection:"pmdevpresto"


explore: table1__3378a6a7_a84e_455f_bb7b_8247e9147446 {

join: table2__a78dbb96_543a_4cb3_8d64_54bd43f28da0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3378a6a7_a84e_455f_bb7b_8247e9147446.f1} = ${table2__a78dbb96_543a_4cb3_8d64_54bd43f28da0.f2} ;;
}
}


view: table2__a78dbb96_543a_4cb3_8d64_54bd43f28da0 {
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


view: table1__3378a6a7_a84e_455f_bb7b_8247e9147446 {
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