
connection:"pmdevpresto"


explore: table1__7e871cae_2265_453f_a039_4bb32fa8b90d {

join: table2__709392d4_877c_44ab_ac24_7a9ec1dfab70 {
 relationship: one_to_one
 sql_on: ${table1__7e871cae_2265_453f_a039_4bb32fa8b90d.f1} = ${table2__709392d4_877c_44ab_ac24_7a9ec1dfab70.f2} ;;
}
}


view: table1__7e871cae_2265_453f_a039_4bb32fa8b90d {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: table2__709392d4_877c_44ab_ac24_7a9ec1dfab70 {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}