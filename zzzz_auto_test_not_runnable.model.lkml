
connection:"pmdevpresto"


explore: table1__dcc663f9_d623_469c_b90d_6c6e7fb5f28e {

join: table2__1a9c9a75_3420_4095_a4a5_29d03068f8db {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__dcc663f9_d623_469c_b90d_6c6e7fb5f28e.f1} = ${table2__1a9c9a75_3420_4095_a4a5_29d03068f8db.f2} ;;
}
}


view: table2__1a9c9a75_3420_4095_a4a5_29d03068f8db {
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


view: table1__dcc663f9_d623_469c_b90d_6c6e7fb5f28e {
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