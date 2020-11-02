
connection:"pmdevpresto"


explore: table1__9d45fb54_1c4e_4234_b48a_8f8727df691b {

join: table2__79e3f3b8_e3a8_4c8c_a041_acd8483735d4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9d45fb54_1c4e_4234_b48a_8f8727df691b.f1} = ${table2__79e3f3b8_e3a8_4c8c_a041_acd8483735d4.f2} ;;
}
}


view: table2__79e3f3b8_e3a8_4c8c_a041_acd8483735d4 {
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


view: table1__9d45fb54_1c4e_4234_b48a_8f8727df691b {
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