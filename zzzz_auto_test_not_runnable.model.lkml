
connection:"pmdevpresto"


explore: table1__1fac6e70_b499_43ab_91b2_7a1594818fbd {

join: table2__f9959553_c531_431a_a114_2014eb2cca97 {
 relationship: one_to_one
 sql_on: ${table1__1fac6e70_b499_43ab_91b2_7a1594818fbd.f1} = ${table2__f9959553_c531_431a_a114_2014eb2cca97.f2} ;;
}
}


view: table1__1fac6e70_b499_43ab_91b2_7a1594818fbd {
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


view: table2__f9959553_c531_431a_a114_2014eb2cca97 {
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