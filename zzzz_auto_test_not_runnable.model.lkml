
connection:"pmdevpresto"


explore: table1__15582112_0066_4e0f_a271_a37189e5b190 {

join: table2__7c0140c9_4303_4615_a537_a436714256de {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__15582112_0066_4e0f_a271_a37189e5b190.f1} = ${table2__7c0140c9_4303_4615_a537_a436714256de.f2} ;;
}
}


view: table2__7c0140c9_4303_4615_a537_a436714256de {
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


view: table1__15582112_0066_4e0f_a271_a37189e5b190 {
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