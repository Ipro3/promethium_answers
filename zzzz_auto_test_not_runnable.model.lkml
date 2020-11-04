
connection:"pmdevpresto"


explore: table1__7844f460_fe9c_40da_95e7_e538ea602ced {

join: table2__7cb9d9a6_02ac_4c15_9e7d_eff2ac5f9a5c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7844f460_fe9c_40da_95e7_e538ea602ced.f1} = ${table2__7cb9d9a6_02ac_4c15_9e7d_eff2ac5f9a5c.f2} ;;
}
}


view: table1__7844f460_fe9c_40da_95e7_e538ea602ced {
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


view: table2__7cb9d9a6_02ac_4c15_9e7d_eff2ac5f9a5c {
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