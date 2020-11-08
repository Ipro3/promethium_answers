
connection:"pmdevpresto"


explore: table1__bc43d06d_b58f_4028_830c_e48d7124cdc0 {

join: table2__48842bbb_e900_4c8f_8f4d_11bf33e33bc7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__bc43d06d_b58f_4028_830c_e48d7124cdc0.f1} = ${table2__48842bbb_e900_4c8f_8f4d_11bf33e33bc7.f2} ;;
}
}


view: table2__48842bbb_e900_4c8f_8f4d_11bf33e33bc7 {
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


view: table1__bc43d06d_b58f_4028_830c_e48d7124cdc0 {
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