
connection:"pmdevpresto"


explore: table1__f70b78d2_6d6f_45b7_a596_7fb8a783de7b {

join: table2__e13038ef_d3fa_4135_b78f_f2cd183b574a {
 relationship: one_to_one
 sql_on: ${table1__f70b78d2_6d6f_45b7_a596_7fb8a783de7b.f1} = ${table2__e13038ef_d3fa_4135_b78f_f2cd183b574a.f2} ;;
}
}


view: table2__e13038ef_d3fa_4135_b78f_f2cd183b574a {
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


view: table1__f70b78d2_6d6f_45b7_a596_7fb8a783de7b {
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