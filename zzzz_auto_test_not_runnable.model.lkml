
connection:"pmdevpresto"


explore: table1__ea3eef26_d08b_4f23_9f0d_41d38e384d96 {

join: table2__fb415bdb_9e56_4a04_ad89_f34ec96938b9 {
 relationship: one_to_one
 sql_on: ${table1__ea3eef26_d08b_4f23_9f0d_41d38e384d96.f1} = ${table2__fb415bdb_9e56_4a04_ad89_f34ec96938b9.f2} ;;
}
}


view: table1__ea3eef26_d08b_4f23_9f0d_41d38e384d96 {
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


view: table2__fb415bdb_9e56_4a04_ad89_f34ec96938b9 {
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