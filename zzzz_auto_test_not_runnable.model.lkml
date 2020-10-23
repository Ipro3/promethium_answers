
connection:"pmdevpresto"


explore: table1__24562f55_c87a_40f6_94ae_5af0fb4b6f5b {

join: table2__f5b8144b_0bfa_4937_b243_dba270c8ac4b {
 relationship: one_to_one
 sql_on: ${table1__24562f55_c87a_40f6_94ae_5af0fb4b6f5b.f1} = ${table2__f5b8144b_0bfa_4937_b243_dba270c8ac4b.f2} ;;
}
}


view: table1__24562f55_c87a_40f6_94ae_5af0fb4b6f5b {
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


view: table2__f5b8144b_0bfa_4937_b243_dba270c8ac4b {
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