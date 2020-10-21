
connection:"pmdevpresto"


explore: table1__737af983_05da_40a3_92ea_0f836dec03ec {

join: table2__e9339edd_fd1e_40ed_a141_6592165a6d7e {
 relationship: one_to_one
 sql_on: ${table1__737af983_05da_40a3_92ea_0f836dec03ec.f1} = ${table2__e9339edd_fd1e_40ed_a141_6592165a6d7e.f2} ;;
}
}


view: table2__e9339edd_fd1e_40ed_a141_6592165a6d7e {
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


view: table1__737af983_05da_40a3_92ea_0f836dec03ec {
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