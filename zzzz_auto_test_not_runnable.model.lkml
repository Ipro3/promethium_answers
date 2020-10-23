
connection:"pmdevpresto"


explore: table1__2b75c78c_0b90_4b6a_9c68_7855117d9311 {

join: table2__a95cf951_9cea_42eb_981f_8f2fd5e19e08 {
 relationship: one_to_one
 sql_on: ${table1__2b75c78c_0b90_4b6a_9c68_7855117d9311.f1} = ${table2__a95cf951_9cea_42eb_981f_8f2fd5e19e08.f2} ;;
}
}


view: table2__a95cf951_9cea_42eb_981f_8f2fd5e19e08 {
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


view: table1__2b75c78c_0b90_4b6a_9c68_7855117d9311 {
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