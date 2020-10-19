
connection:"pmdevpresto"


explore: table1__70b8a7ef_3004_4821_8572_52df652c65ad {

join: table2__7b859387_4977_425e_8b07_5915a9110bca {
 relationship: one_to_one
 sql_on: ${table1__70b8a7ef_3004_4821_8572_52df652c65ad.f1} = ${table2__7b859387_4977_425e_8b07_5915a9110bca.f2} ;;
}
}


view: table1__70b8a7ef_3004_4821_8572_52df652c65ad {
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


view: table2__7b859387_4977_425e_8b07_5915a9110bca {
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