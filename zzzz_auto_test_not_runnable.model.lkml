
connection:"pmdevpresto"


explore: table1__56f7f7cc_52a8_437e_a5d8_b7c081f3f8e4 {

join: table2__abb71d97_458d_4bcc_93eb_579cb50b63eb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__56f7f7cc_52a8_437e_a5d8_b7c081f3f8e4.f1} = ${table2__abb71d97_458d_4bcc_93eb_579cb50b63eb.f2} ;;
}
}


view: table1__56f7f7cc_52a8_437e_a5d8_b7c081f3f8e4 {
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


view: table2__abb71d97_458d_4bcc_93eb_579cb50b63eb {
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