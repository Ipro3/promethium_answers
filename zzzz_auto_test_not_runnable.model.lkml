
connection:"pmdevpresto"


explore: table1__36040214_7a6e_47af_b932_a8c406b1f342 {

join: table2__53a3e126_fbfa_4a48_be40_3f489eae4809 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__36040214_7a6e_47af_b932_a8c406b1f342.f1} = ${table2__53a3e126_fbfa_4a48_be40_3f489eae4809.f2} ;;
}
}


view: table1__36040214_7a6e_47af_b932_a8c406b1f342 {
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


view: table2__53a3e126_fbfa_4a48_be40_3f489eae4809 {
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