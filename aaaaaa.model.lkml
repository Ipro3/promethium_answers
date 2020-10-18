
connection:"pmdevpresto"


explore: null__3ddd801f_a1b3_48d8_b5e0_aae732bed0e7 {

join: null__b6925c8c_f7be_42f3_946a_cd36f6445267 {
 relationship: one_to_one
 sql_on: ${null__3ddd801f_a1b3_48d8_b5e0_aae732bed0e7.f1} = ${null__b6925c8c_f7be_42f3_946a_cd36f6445267.f2} ;;
}
}


view: null__3ddd801f_a1b3_48d8_b5e0_aae732bed0e7 {
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


view: null__b6925c8c_f7be_42f3_946a_cd36f6445267 {
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