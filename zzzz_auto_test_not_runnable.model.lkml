
connection:"pmdevpresto"


explore: table1__775961eb_ca0c_4fe6_94d1_a2a3b40fa873 {

join: table2__ab164683_12b8_4fdd_9d8b_b84f5f4eea43 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__775961eb_ca0c_4fe6_94d1_a2a3b40fa873.f1} = ${table2__ab164683_12b8_4fdd_9d8b_b84f5f4eea43.f2} ;;
}
}


view: table1__775961eb_ca0c_4fe6_94d1_a2a3b40fa873 {
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


view: table2__ab164683_12b8_4fdd_9d8b_b84f5f4eea43 {
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