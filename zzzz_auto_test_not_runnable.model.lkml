
connection:"pmdevpresto"


explore: table1__0180f66f_4396_45b4_a847_91188848546a {

join: table2__b58e1cb1_1d1e_4374_be23_8bc29060485a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0180f66f_4396_45b4_a847_91188848546a.f1} = ${table2__b58e1cb1_1d1e_4374_be23_8bc29060485a.f2} ;;
}
}


view: table1__0180f66f_4396_45b4_a847_91188848546a {
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


view: table2__b58e1cb1_1d1e_4374_be23_8bc29060485a {
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