
connection:"pmdevpresto"


explore: table1__ddde82ca_d4aa_4ae6_8dfb_02daefb932ed {

join: table2__08d2755a_964e_4873_ba84_398ff61bc8c7 {
 relationship: one_to_one
 sql_on: ${table1__ddde82ca_d4aa_4ae6_8dfb_02daefb932ed.f1} = ${table2__08d2755a_964e_4873_ba84_398ff61bc8c7.f2} ;;
}
}


view: table2__08d2755a_964e_4873_ba84_398ff61bc8c7 {
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


view: table1__ddde82ca_d4aa_4ae6_8dfb_02daefb932ed {
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