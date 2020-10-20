
connection:"pmdevpresto"


explore: table1__81f4710a_9d1c_47ab_9b29_bf3a37d7d517 {

join: table2__afc414b0_7459_4f60_bf57_5b85c7194fcd {
 relationship: one_to_one
 sql_on: ${table1__81f4710a_9d1c_47ab_9b29_bf3a37d7d517.f1} = ${table2__afc414b0_7459_4f60_bf57_5b85c7194fcd.f2} ;;
}
}


view: table2__afc414b0_7459_4f60_bf57_5b85c7194fcd {
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


view: table1__81f4710a_9d1c_47ab_9b29_bf3a37d7d517 {
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