
connection:"pmdevpresto"


explore: table1__8abcd10d_1c38_49cb_a47c_f8d090a45c73 {

join: table2__8d88a963_44c6_4e38_93ae_48bd1b3c10f0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8abcd10d_1c38_49cb_a47c_f8d090a45c73.f1} = ${table2__8d88a963_44c6_4e38_93ae_48bd1b3c10f0.f2} ;;
}
}


view: table2__8d88a963_44c6_4e38_93ae_48bd1b3c10f0 {
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


view: table1__8abcd10d_1c38_49cb_a47c_f8d090a45c73 {
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