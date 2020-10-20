
connection:"pmdevpresto"


explore: table1__994a521f_bef4_49dc_b380_d5de266bc29c {

join: table2__2c1e2f79_7f18_4426_9274_04f4560ce13c {
 relationship: one_to_one
 sql_on: ${table1__994a521f_bef4_49dc_b380_d5de266bc29c.f1} = ${table2__2c1e2f79_7f18_4426_9274_04f4560ce13c.f2} ;;
}
}


view: table2__2c1e2f79_7f18_4426_9274_04f4560ce13c {
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


view: table1__994a521f_bef4_49dc_b380_d5de266bc29c {
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