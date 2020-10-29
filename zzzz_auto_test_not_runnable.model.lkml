
connection:"pmdevpresto"


explore: table1__70a18266_0467_4fc7_8203_35edea436448 {

join: table2__99443545_547d_4107_950e_5e999ea05ebc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__70a18266_0467_4fc7_8203_35edea436448.f1} = ${table2__99443545_547d_4107_950e_5e999ea05ebc.f2} ;;
}
}


view: table2__99443545_547d_4107_950e_5e999ea05ebc {
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


view: table1__70a18266_0467_4fc7_8203_35edea436448 {
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