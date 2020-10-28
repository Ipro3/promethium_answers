
connection:"pmdevpresto"


explore: table1__33aa4d2b_a4bf_410a_ac15_4e8d45e8e93d {

join: table2__1ec20134_faf8_4831_ba87_025b34572de1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__33aa4d2b_a4bf_410a_ac15_4e8d45e8e93d.f1} = ${table2__1ec20134_faf8_4831_ba87_025b34572de1.f2} ;;
}
}


view: table2__1ec20134_faf8_4831_ba87_025b34572de1 {
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


view: table1__33aa4d2b_a4bf_410a_ac15_4e8d45e8e93d {
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