
connection:"pmdevpresto"


explore: table1__9d0813c5_47dd_4cec_9a86_65c3ead26d87 {

join: table2__bca3e229_ae84_4d12_be6e_c2d597ed6147 {
 relationship: one_to_one
 sql_on: ${table1__9d0813c5_47dd_4cec_9a86_65c3ead26d87.f1} = ${table2__bca3e229_ae84_4d12_be6e_c2d597ed6147.f2} ;;
}
}


view: table1__9d0813c5_47dd_4cec_9a86_65c3ead26d87 {
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


view: table2__bca3e229_ae84_4d12_be6e_c2d597ed6147 {
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