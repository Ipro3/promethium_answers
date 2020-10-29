
connection:"pmdevpresto"


explore: table1__ea65673d_0d39_46b4_b292_a692f11eb1b1 {

join: table2__adf5e1bb_e150_4ea6_ba6f_911b79df130e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ea65673d_0d39_46b4_b292_a692f11eb1b1.f1} = ${table2__adf5e1bb_e150_4ea6_ba6f_911b79df130e.f2} ;;
}
}


view: table1__ea65673d_0d39_46b4_b292_a692f11eb1b1 {
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


view: table2__adf5e1bb_e150_4ea6_ba6f_911b79df130e {
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