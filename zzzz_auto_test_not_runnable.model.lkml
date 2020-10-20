
connection:"pmdevpresto"


explore: table1__9677874b_1c43_475f_9ed5_65b529129e0d {

join: table2__436a09c7_37dd_4a05_8c99_5166c10963f7 {
 relationship: one_to_one
 sql_on: ${table1__9677874b_1c43_475f_9ed5_65b529129e0d.f1} = ${table2__436a09c7_37dd_4a05_8c99_5166c10963f7.f2} ;;
}
}


view: table2__436a09c7_37dd_4a05_8c99_5166c10963f7 {
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


view: table1__9677874b_1c43_475f_9ed5_65b529129e0d {
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