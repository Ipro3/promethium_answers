
connection:"pmdevpresto"


explore: table1__41f8baa0_f1ae_41f2_a545_43d7677e4285 {

join: table2__fd00b3c4_14aa_4be1_9f04_02f2a56575ce {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__41f8baa0_f1ae_41f2_a545_43d7677e4285.f1} = ${table2__fd00b3c4_14aa_4be1_9f04_02f2a56575ce.f2} ;;
}
}


view: table1__41f8baa0_f1ae_41f2_a545_43d7677e4285 {
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


view: table2__fd00b3c4_14aa_4be1_9f04_02f2a56575ce {
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