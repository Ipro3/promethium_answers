
connection:"pmdevpresto"


explore: table1__611b1815_c123_4780_b57b_8d66fc65c30d {

join: table2__9a2c67f7_02aa_40e6_bae7_507fb3953611 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__611b1815_c123_4780_b57b_8d66fc65c30d.f1} = ${table2__9a2c67f7_02aa_40e6_bae7_507fb3953611.f2} ;;
}
}


view: table1__611b1815_c123_4780_b57b_8d66fc65c30d {
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


view: table2__9a2c67f7_02aa_40e6_bae7_507fb3953611 {
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