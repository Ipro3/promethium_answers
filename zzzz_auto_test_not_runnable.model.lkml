
connection:"pmdevpresto"


explore: table1__d78a4801_605d_4ec9_9da4_2ddf6ac23cbe {

join: table2__32029960_d9d4_4e7b_9850_06974095ea32 {
 relationship: one_to_one
 sql_on: ${table1__d78a4801_605d_4ec9_9da4_2ddf6ac23cbe.f1} = ${table2__32029960_d9d4_4e7b_9850_06974095ea32.f2} ;;
}
}


view: table2__32029960_d9d4_4e7b_9850_06974095ea32 {
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


view: table1__d78a4801_605d_4ec9_9da4_2ddf6ac23cbe {
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