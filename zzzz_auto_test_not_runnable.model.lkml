
connection:"pmdevpresto"


explore: table1__b28a5813_2e05_4179_b9cd_8b80c27addca {

join: table2__ce3da79f_0c4e_427b_ae6a_86853c83abf3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b28a5813_2e05_4179_b9cd_8b80c27addca.f1} = ${table2__ce3da79f_0c4e_427b_ae6a_86853c83abf3.f2} ;;
}
}


view: table1__b28a5813_2e05_4179_b9cd_8b80c27addca {
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


view: table2__ce3da79f_0c4e_427b_ae6a_86853c83abf3 {
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