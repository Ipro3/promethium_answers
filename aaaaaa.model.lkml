
connection:"pmdevpresto"


explore: null__53fdca34_92be_43b5_94ec_53fe2e8be032 {

join: null__32b8d844_fb2b_4ed2_a346_f48c0885be3b {
 relationship: one_to_one
 sql_on: ${null__53fdca34_92be_43b5_94ec_53fe2e8be032.f1} = ${null__32b8d844_fb2b_4ed2_a346_f48c0885be3b.f2} ;;
}
}


view: null__32b8d844_fb2b_4ed2_a346_f48c0885be3b {
sql_table_name:catalog1.db1.table2 ;;
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
}


view: null__53fdca34_92be_43b5_94ec_53fe2e8be032 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
}