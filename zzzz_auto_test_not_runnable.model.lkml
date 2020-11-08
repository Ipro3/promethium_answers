
connection:"pmdevpresto"


explore: table1__8d1d7e0d_1c6a_4f45_9e43_666d71d878fe {

join: table2__da833ee2_92f9_41fc_a215_07ef6ed981b7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8d1d7e0d_1c6a_4f45_9e43_666d71d878fe.f1} = ${table2__da833ee2_92f9_41fc_a215_07ef6ed981b7.f2} ;;
}
}


view: table2__da833ee2_92f9_41fc_a215_07ef6ed981b7 {
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


view: table1__8d1d7e0d_1c6a_4f45_9e43_666d71d878fe {
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