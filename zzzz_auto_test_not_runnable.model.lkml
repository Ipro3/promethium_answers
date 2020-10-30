
connection:"pmdevpresto"


explore: table1__b489cccd_3f98_465c_a5b3_be3450b4542f {

join: table2__0d8ee5b7_e3fc_4adc_8153_e75c1d1b9339 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b489cccd_3f98_465c_a5b3_be3450b4542f.f1} = ${table2__0d8ee5b7_e3fc_4adc_8153_e75c1d1b9339.f2} ;;
}
}


view: table2__0d8ee5b7_e3fc_4adc_8153_e75c1d1b9339 {
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


view: table1__b489cccd_3f98_465c_a5b3_be3450b4542f {
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