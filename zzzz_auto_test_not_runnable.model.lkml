
connection:"pmdevpresto"


explore: table1__53ffb7e2_e809_4282_8b4a_7241e6cca26a {

join: table2__a876f1d1_236a_4148_b108_4ab9082070d1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__53ffb7e2_e809_4282_8b4a_7241e6cca26a.f1} = ${table2__a876f1d1_236a_4148_b108_4ab9082070d1.f2} ;;
}
}


view: table1__53ffb7e2_e809_4282_8b4a_7241e6cca26a {
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


view: table2__a876f1d1_236a_4148_b108_4ab9082070d1 {
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