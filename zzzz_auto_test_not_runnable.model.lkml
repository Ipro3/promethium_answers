
connection:"pmdevpresto"


explore: table1__7fecf50e_6de3_4b0a_9c63_58331e19bf84 {

join: table2__6ae1c2dc_d39c_49e2_add0_09b248577440 {
 relationship: one_to_one
 sql_on: ${table1__7fecf50e_6de3_4b0a_9c63_58331e19bf84.f1} = ${table2__6ae1c2dc_d39c_49e2_add0_09b248577440.f2} ;;
}
}


view: table2__6ae1c2dc_d39c_49e2_add0_09b248577440 {
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


view: table1__7fecf50e_6de3_4b0a_9c63_58331e19bf84 {
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