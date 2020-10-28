
connection:"pmdevpresto"


explore: table1__b3a1f961_9e11_49a5_917e_97913e1657c4 {

join: table2__daac1fab_59f7_4519_96d7_81d00083c60a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b3a1f961_9e11_49a5_917e_97913e1657c4.f1} = ${table2__daac1fab_59f7_4519_96d7_81d00083c60a.f2} ;;
}
}


view: table1__b3a1f961_9e11_49a5_917e_97913e1657c4 {
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


view: table2__daac1fab_59f7_4519_96d7_81d00083c60a {
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