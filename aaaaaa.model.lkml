
connection:"pmdevpresto"


explore: table1__86b892f1_3008_4d30_9aa5_27fb54ca8862 {

join: table2__8eeb04d8_aad5_4ead_98d4_bc6ad924d61d {
 relationship: one_to_one
 sql_on: ${table1__86b892f1_3008_4d30_9aa5_27fb54ca8862.f1} = ${table2__8eeb04d8_aad5_4ead_98d4_bc6ad924d61d.f2} ;;
}
}


view: table1__86b892f1_3008_4d30_9aa5_27fb54ca8862 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: table2__8eeb04d8_aad5_4ead_98d4_bc6ad924d61d {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}