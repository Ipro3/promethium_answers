
connection:"pmdevpresto"


explore: table1__0c0900c8_ac91_4c30_9f0c_0dc0c6e80a6f {

join: table2__56967f18_25ac_4b86_8ab1_0f63ec6c4bec {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0c0900c8_ac91_4c30_9f0c_0dc0c6e80a6f.f1} = ${table2__56967f18_25ac_4b86_8ab1_0f63ec6c4bec.f2} ;;
}
}


view: table1__0c0900c8_ac91_4c30_9f0c_0dc0c6e80a6f {
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


view: table2__56967f18_25ac_4b86_8ab1_0f63ec6c4bec {
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