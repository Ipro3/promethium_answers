
connection:"pmdevpresto"


explore: table1__d5ed1157_f2c7_4645_b2e4_8f4f6cf66946 {

join: table2__775dbac1_e1d6_410c_9af3_08ef37a57846 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__d5ed1157_f2c7_4645_b2e4_8f4f6cf66946.f1} = ${table2__775dbac1_e1d6_410c_9af3_08ef37a57846.f2} ;;
}
}


view: table2__775dbac1_e1d6_410c_9af3_08ef37a57846 {
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


view: table1__d5ed1157_f2c7_4645_b2e4_8f4f6cf66946 {
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