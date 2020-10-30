
connection:"pmdevpresto"


explore: table1__0d013459_52d0_4592_b0bd_f224d0d7b415 {

join: table2__6c6e6231_d1bc_4a66_90c9_9c382520bdb8 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0d013459_52d0_4592_b0bd_f224d0d7b415.f1} = ${table2__6c6e6231_d1bc_4a66_90c9_9c382520bdb8.f2} ;;
}
}


view: table2__6c6e6231_d1bc_4a66_90c9_9c382520bdb8 {
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


view: table1__0d013459_52d0_4592_b0bd_f224d0d7b415 {
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