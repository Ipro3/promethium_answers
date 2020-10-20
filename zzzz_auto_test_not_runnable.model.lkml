
connection:"pmdevpresto"


explore: table1__456e9aad_0153_401b_b58e_9e8165fc7e27 {

join: table2__7af6bee7_7de8_453b_9392_7a5d0c9e17d4 {
 relationship: one_to_one
 sql_on: ${table1__456e9aad_0153_401b_b58e_9e8165fc7e27.f1} = ${table2__7af6bee7_7de8_453b_9392_7a5d0c9e17d4.f2} ;;
}
}


view: table2__7af6bee7_7de8_453b_9392_7a5d0c9e17d4 {
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


view: table1__456e9aad_0153_401b_b58e_9e8165fc7e27 {
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