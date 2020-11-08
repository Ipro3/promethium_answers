
connection:"pmdevpresto"


explore: table1__cf6fbcf6_d26a_4fe2_b503_d973a8cb7610 {

join: table2__bd6f9000_eec5_4205_9639_61ac05619c02 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__cf6fbcf6_d26a_4fe2_b503_d973a8cb7610.f1} = ${table2__bd6f9000_eec5_4205_9639_61ac05619c02.f2} ;;
}
}


view: table1__cf6fbcf6_d26a_4fe2_b503_d973a8cb7610 {
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


view: table2__bd6f9000_eec5_4205_9639_61ac05619c02 {
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