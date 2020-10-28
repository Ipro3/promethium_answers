
connection:"pmdevpresto"


explore: table1__da691b1c_f306_4ec1_b406_1b3d4a2945c6 {

join: table2__7b476603_6a65_43cc_a648_3d25b405ebbf {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__da691b1c_f306_4ec1_b406_1b3d4a2945c6.f1} = ${table2__7b476603_6a65_43cc_a648_3d25b405ebbf.f2} ;;
}
}


view: table1__da691b1c_f306_4ec1_b406_1b3d4a2945c6 {
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


view: table2__7b476603_6a65_43cc_a648_3d25b405ebbf {
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