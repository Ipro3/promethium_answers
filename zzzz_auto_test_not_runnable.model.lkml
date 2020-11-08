
connection:"pmdevpresto"


explore: table1__a32bc807_7a9e_474c_b652_2ddb53a85b69 {

join: table2__558efdd9_2ff0_4efe_9fa1_f1763cddea79 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a32bc807_7a9e_474c_b652_2ddb53a85b69.f1} = ${table2__558efdd9_2ff0_4efe_9fa1_f1763cddea79.f2} ;;
}
}


view: table1__a32bc807_7a9e_474c_b652_2ddb53a85b69 {
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


view: table2__558efdd9_2ff0_4efe_9fa1_f1763cddea79 {
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