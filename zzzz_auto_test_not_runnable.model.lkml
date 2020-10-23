
connection:"pmdevpresto"


explore: table1__81f66968_17ea_420c_96ee_a99e766e0507 {

join: table2__cab04c05_3eb4_4c55_8ce5_fdc18388c865 {
 relationship: one_to_one
 sql_on: ${table1__81f66968_17ea_420c_96ee_a99e766e0507.f1} = ${table2__cab04c05_3eb4_4c55_8ce5_fdc18388c865.f2} ;;
}
}


view: table2__cab04c05_3eb4_4c55_8ce5_fdc18388c865 {
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


view: table1__81f66968_17ea_420c_96ee_a99e766e0507 {
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