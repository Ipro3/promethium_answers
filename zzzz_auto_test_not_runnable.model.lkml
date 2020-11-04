
connection:"pmdevpresto"


explore: table1__26b7dbfa_900f_4770_9158_9422c4c9b539 {

join: table2__dc002c06_18ed_4ec8_bcf2_34c34c701b74 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__26b7dbfa_900f_4770_9158_9422c4c9b539.f1} = ${table2__dc002c06_18ed_4ec8_bcf2_34c34c701b74.f2} ;;
}
}


view: table2__dc002c06_18ed_4ec8_bcf2_34c34c701b74 {
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


view: table1__26b7dbfa_900f_4770_9158_9422c4c9b539 {
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