
connection:"pmdevpresto"


explore: table1__44543f95_554c_49cb_851a_ef6e0c3af9c2 {

join: table2__b475fbb8_e15c_4e59_a8ac_38c9b0f36291 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__44543f95_554c_49cb_851a_ef6e0c3af9c2.f1} = ${table2__b475fbb8_e15c_4e59_a8ac_38c9b0f36291.f2} ;;
}
}


view: table1__44543f95_554c_49cb_851a_ef6e0c3af9c2 {
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


view: table2__b475fbb8_e15c_4e59_a8ac_38c9b0f36291 {
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