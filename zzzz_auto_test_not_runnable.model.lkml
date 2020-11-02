
connection:"pmdevpresto"


explore: table1__eba3dbd4_410e_43e8_9aa8_79c21e267326 {

join: table2__d7ff7693_5bee_4226_8df3_74aff962d50d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__eba3dbd4_410e_43e8_9aa8_79c21e267326.f1} = ${table2__d7ff7693_5bee_4226_8df3_74aff962d50d.f2} ;;
}
}


view: table1__eba3dbd4_410e_43e8_9aa8_79c21e267326 {
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


view: table2__d7ff7693_5bee_4226_8df3_74aff962d50d {
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