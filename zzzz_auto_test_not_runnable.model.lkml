
connection:"pmdevpresto"


explore: table1__9d968538_ceaf_4ed4_8bbe_b147a2c45689 {

join: table2__eb911820_3466_42d8_97d6_97fc8cd68809 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9d968538_ceaf_4ed4_8bbe_b147a2c45689.f1} = ${table2__eb911820_3466_42d8_97d6_97fc8cd68809.f2} ;;
}
}


view: table1__9d968538_ceaf_4ed4_8bbe_b147a2c45689 {
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


view: table2__eb911820_3466_42d8_97d6_97fc8cd68809 {
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