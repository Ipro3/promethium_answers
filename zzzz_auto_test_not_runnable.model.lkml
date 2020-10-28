
connection:"pmdevpresto"


explore: table1__f5a030b0_be1e_4320_bab5_871a5afd7231 {

join: table2__0e9a3b07_03a0_4451_bfd8_38e3f8f060b2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f5a030b0_be1e_4320_bab5_871a5afd7231.f1} = ${table2__0e9a3b07_03a0_4451_bfd8_38e3f8f060b2.f2} ;;
}
}


view: table1__f5a030b0_be1e_4320_bab5_871a5afd7231 {
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


view: table2__0e9a3b07_03a0_4451_bfd8_38e3f8f060b2 {
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