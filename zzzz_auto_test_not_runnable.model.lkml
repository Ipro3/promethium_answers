
connection:"pmdevpresto"


explore: table1__9b08cba3_e6e9_4d43_9038_35c6531cba80 {

join: table2__5e821f15_6088_4681_9901_75489c716f1c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__9b08cba3_e6e9_4d43_9038_35c6531cba80.f1} = ${table2__5e821f15_6088_4681_9901_75489c716f1c.f2} ;;
}
}


view: table1__9b08cba3_e6e9_4d43_9038_35c6531cba80 {
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


view: table2__5e821f15_6088_4681_9901_75489c716f1c {
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