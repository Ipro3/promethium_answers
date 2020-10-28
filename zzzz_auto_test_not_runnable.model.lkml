
connection:"pmdevpresto"


explore: table1__6147c3d9_733a_47f2_9b0c_b141c67ee147 {

join: table2__6ff1fb02_01c6_4bdb_96e0_8a0a98cdf3ba {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6147c3d9_733a_47f2_9b0c_b141c67ee147.f1} = ${table2__6ff1fb02_01c6_4bdb_96e0_8a0a98cdf3ba.f2} ;;
}
}


view: table1__6147c3d9_733a_47f2_9b0c_b141c67ee147 {
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


view: table2__6ff1fb02_01c6_4bdb_96e0_8a0a98cdf3ba {
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