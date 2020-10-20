
connection:"pmdevpresto"


explore: table1__1cda9ac3_c1db_4d24_87a4_b62bcdc5a2f1 {

join: table2__fc7b7c58_5093_4275_ae42_b8b27b5c0d62 {
 relationship: one_to_one
 sql_on: ${table1__1cda9ac3_c1db_4d24_87a4_b62bcdc5a2f1.f1} = ${table2__fc7b7c58_5093_4275_ae42_b8b27b5c0d62.f2} ;;
}
}


view: table2__fc7b7c58_5093_4275_ae42_b8b27b5c0d62 {
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


view: table1__1cda9ac3_c1db_4d24_87a4_b62bcdc5a2f1 {
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