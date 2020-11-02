
connection:"pmdevpresto"


explore: table1__2c168e56_1f28_4d27_9f6c_48002628373c {

join: table2__8583d558_0984_4525_a370_fd48d300bd23 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2c168e56_1f28_4d27_9f6c_48002628373c.f1} = ${table2__8583d558_0984_4525_a370_fd48d300bd23.f2} ;;
}
}


view: table1__2c168e56_1f28_4d27_9f6c_48002628373c {
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


view: table2__8583d558_0984_4525_a370_fd48d300bd23 {
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