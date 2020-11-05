
connection:"pmdevpresto"


explore: table1__490dd816_871a_400d_819f_c4da976e3ed7 {

join: table2__3aa2cbe0_24ad_468f_b5b4_cd52a10f1828 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__490dd816_871a_400d_819f_c4da976e3ed7.f1} = ${table2__3aa2cbe0_24ad_468f_b5b4_cd52a10f1828.f2} ;;
}
}


view: table1__490dd816_871a_400d_819f_c4da976e3ed7 {
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


view: table2__3aa2cbe0_24ad_468f_b5b4_cd52a10f1828 {
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