
connection:"pmdevpresto"


explore: table1__4965a5f7_d846_46a6_a1d4_f5b844890a86 {

join: table2__dab4169e_0b81_4f92_aa82_8aa2544fc3bd {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__4965a5f7_d846_46a6_a1d4_f5b844890a86.f1} = ${table2__dab4169e_0b81_4f92_aa82_8aa2544fc3bd.f2} ;;
}
}


view: table1__4965a5f7_d846_46a6_a1d4_f5b844890a86 {
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


view: table2__dab4169e_0b81_4f92_aa82_8aa2544fc3bd {
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