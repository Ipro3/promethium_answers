
connection:"pmdevpresto"


explore: table1__3bbd25ae_cbee_4a1c_834e_432ac0ec5b05 {

join: table2__afaf737b_4fa0_40b7_8f88_3b94195ff74d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3bbd25ae_cbee_4a1c_834e_432ac0ec5b05.f1} = ${table2__afaf737b_4fa0_40b7_8f88_3b94195ff74d.f2} ;;
}
}


view: table1__3bbd25ae_cbee_4a1c_834e_432ac0ec5b05 {
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


view: table2__afaf737b_4fa0_40b7_8f88_3b94195ff74d {
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