
connection:"pmdevpresto"


explore: table1__8ee7cb43_c213_4397_8170_98547758e2b7 {

join: table2__857081b9_fad2_40a5_9c9c_8f6040b34534 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8ee7cb43_c213_4397_8170_98547758e2b7.f1} = ${table2__857081b9_fad2_40a5_9c9c_8f6040b34534.f2} ;;
}
}


view: table1__8ee7cb43_c213_4397_8170_98547758e2b7 {
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


view: table2__857081b9_fad2_40a5_9c9c_8f6040b34534 {
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