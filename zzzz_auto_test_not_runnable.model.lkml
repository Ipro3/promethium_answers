
connection:"pmdevpresto"


explore: table1__2d6350e7_7b83_4486_98fe_117b7af3325e {

join: table2__9d8d4080_0a28_41c2_a16b_ec519fff7d28 {
 relationship: one_to_one
 sql_on: ${table1__2d6350e7_7b83_4486_98fe_117b7af3325e.f1} = ${table2__9d8d4080_0a28_41c2_a16b_ec519fff7d28.f2} ;;
}
}


view: table2__9d8d4080_0a28_41c2_a16b_ec519fff7d28 {
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


view: table1__2d6350e7_7b83_4486_98fe_117b7af3325e {
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