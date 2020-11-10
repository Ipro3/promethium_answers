
connection:"pmdevpresto"


explore: table1__b1c6abad_5776_49b4_8a86_b5adfbdc60ba {

join: table2__1767856f_e273_42f5_aa0a_8668f73d35d7 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b1c6abad_5776_49b4_8a86_b5adfbdc60ba.f1} = ${table2__1767856f_e273_42f5_aa0a_8668f73d35d7.f2} ;;
}
}


view: table2__1767856f_e273_42f5_aa0a_8668f73d35d7 {
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


view: table1__b1c6abad_5776_49b4_8a86_b5adfbdc60ba {
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