
connection:"pmdevpresto"


explore: table1__a1bcd130_a019_45b4_b40e_1497d41ad0a6 {

join: table2__1d0d29da_61eb_4957_8197_e26af49e8055 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__a1bcd130_a019_45b4_b40e_1497d41ad0a6.f1} = ${table2__1d0d29da_61eb_4957_8197_e26af49e8055.f2} ;;
}
}


view: table1__a1bcd130_a019_45b4_b40e_1497d41ad0a6 {
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


view: table2__1d0d29da_61eb_4957_8197_e26af49e8055 {
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