
connection:"pmdevpresto"


explore: table1__0d8fa879_d88c_44c7_bb52_1075143205c7 {

join: table2__e2285050_d941_43aa_9fc1_da39befbae2f {
 relationship: one_to_one
 sql_on: ${table1__0d8fa879_d88c_44c7_bb52_1075143205c7.f1} = ${table2__e2285050_d941_43aa_9fc1_da39befbae2f.f2} ;;
}
}


view: table2__e2285050_d941_43aa_9fc1_da39befbae2f {
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


view: table1__0d8fa879_d88c_44c7_bb52_1075143205c7 {
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