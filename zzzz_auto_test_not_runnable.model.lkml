
connection:"pmdevpresto"


explore: table1__9f19acc4_a6e5_4467_a9ff_4cc71441a350 {

join: table2__7c419be2_6208_4b57_af38_2c2b8b35fb28 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9f19acc4_a6e5_4467_a9ff_4cc71441a350.f1} = ${table2__7c419be2_6208_4b57_af38_2c2b8b35fb28.f2} ;;
}
}


view: table2__7c419be2_6208_4b57_af38_2c2b8b35fb28 {
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


view: table1__9f19acc4_a6e5_4467_a9ff_4cc71441a350 {
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