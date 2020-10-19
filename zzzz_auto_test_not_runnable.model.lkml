
connection:"pmdevpresto"


explore: table1__09a41c2d_3005_4d18_909c_d3a4aed16276 {

join: table2__afd5844d_d84c_45c8_8084_085dfc40b3a5 {
 relationship: one_to_one
 sql_on: ${table1__09a41c2d_3005_4d18_909c_d3a4aed16276.f1} = ${table2__afd5844d_d84c_45c8_8084_085dfc40b3a5.f2} ;;
}
}


view: table2__afd5844d_d84c_45c8_8084_085dfc40b3a5 {
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


view: table1__09a41c2d_3005_4d18_909c_d3a4aed16276 {
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