
connection:"pmdevpresto"


explore: table1__70045440_6e2d_4203_9219_89a396bf27d2 {

join: table2__fda89ba7_522f_462c_9552_c25976738d3f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__70045440_6e2d_4203_9219_89a396bf27d2.f1} = ${table2__fda89ba7_522f_462c_9552_c25976738d3f.f2} ;;
}
}


view: table1__70045440_6e2d_4203_9219_89a396bf27d2 {
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


view: table2__fda89ba7_522f_462c_9552_c25976738d3f {
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