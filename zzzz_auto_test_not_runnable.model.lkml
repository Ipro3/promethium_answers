
connection:"pmdevpresto"


explore: table1__22190a98_c22e_4dab_ae93_00eb4f173b6a {

join: table2__85f304af_2f9d_4469_a56d_25ab92b00287 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__22190a98_c22e_4dab_ae93_00eb4f173b6a.f1} = ${table2__85f304af_2f9d_4469_a56d_25ab92b00287.f2} ;;
}
}


view: table1__22190a98_c22e_4dab_ae93_00eb4f173b6a {
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


view: table2__85f304af_2f9d_4469_a56d_25ab92b00287 {
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