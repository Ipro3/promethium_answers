
connection:"pmdevpresto"


explore: table1__5a735a28_b6ed_4ac4_b8fe_243c577adff4 {

join: table2__d66e6490_058b_4370_8403_21969dcd0c7d {
 relationship: one_to_one
 sql_on: ${table1__5a735a28_b6ed_4ac4_b8fe_243c577adff4.f1} = ${table2__d66e6490_058b_4370_8403_21969dcd0c7d.f2} ;;
}
}


view: table1__5a735a28_b6ed_4ac4_b8fe_243c577adff4 {
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


view: table2__d66e6490_058b_4370_8403_21969dcd0c7d {
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