
connection:"pmdevpresto"


explore: table1__83c3476d_1c56_4850_945b_601ad01009cd {

join: table2__8f6758dd_7ed6_4f69_9c65_39ee19505d1d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__83c3476d_1c56_4850_945b_601ad01009cd.f1} = ${table2__8f6758dd_7ed6_4f69_9c65_39ee19505d1d.f2} ;;
}
}


view: table1__83c3476d_1c56_4850_945b_601ad01009cd {
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


view: table2__8f6758dd_7ed6_4f69_9c65_39ee19505d1d {
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