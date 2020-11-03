
connection:"pmdevpresto"


explore: table1__8faccbb0_6293_4858_8ae6_7c928af1ea1c {

join: table2__7967f4ad_b48b_462e_8c19_66024bba5ec6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__8faccbb0_6293_4858_8ae6_7c928af1ea1c.f1} = ${table2__7967f4ad_b48b_462e_8c19_66024bba5ec6.f2} ;;
}
}


view: table2__7967f4ad_b48b_462e_8c19_66024bba5ec6 {
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


view: table1__8faccbb0_6293_4858_8ae6_7c928af1ea1c {
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