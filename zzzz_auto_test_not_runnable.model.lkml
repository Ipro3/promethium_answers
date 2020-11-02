
connection:"pmdevpresto"


explore: table1__65b0e135_abac_4249_9819_42d05af76b22 {

join: table2__0a4d431d_6b9f_4c51_8c80_de85215e1ccd {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__65b0e135_abac_4249_9819_42d05af76b22.f1} = ${table2__0a4d431d_6b9f_4c51_8c80_de85215e1ccd.f2} ;;
}
}


view: table2__0a4d431d_6b9f_4c51_8c80_de85215e1ccd {
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


view: table1__65b0e135_abac_4249_9819_42d05af76b22 {
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