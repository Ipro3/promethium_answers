
connection:"pmdevpresto"


explore: table1__ad3761eb_f292_4aae_b2fb_e24a0cbeea54 {

join: table2__cd893eea_0b07_458b_89b4_7dfc9e26c651 {
 relationship: one_to_one
 sql_on: ${table1__ad3761eb_f292_4aae_b2fb_e24a0cbeea54.f1} = ${table2__cd893eea_0b07_458b_89b4_7dfc9e26c651.f2} ;;
}
}


view: table1__ad3761eb_f292_4aae_b2fb_e24a0cbeea54 {
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


view: table2__cd893eea_0b07_458b_89b4_7dfc9e26c651 {
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