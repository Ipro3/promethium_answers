
connection:"pmdevpresto"


explore: table1__decfe710_8e98_469c_b64a_fe8ed19195fe {

join: table2__905b6c4b_4cd4_40b1_ac23_105b69c06d76 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__decfe710_8e98_469c_b64a_fe8ed19195fe.f1} = ${table2__905b6c4b_4cd4_40b1_ac23_105b69c06d76.f2} ;;
}
}


view: table2__905b6c4b_4cd4_40b1_ac23_105b69c06d76 {
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


view: table1__decfe710_8e98_469c_b64a_fe8ed19195fe {
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