
connection:"pmdevpresto"


explore: table1__3ab863be_645a_45c1_8cb9_0db2e0d379ce {

join: table2__158f0c88_bd9e_4709_ae4c_74b37fdd2a73 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3ab863be_645a_45c1_8cb9_0db2e0d379ce.f1} = ${table2__158f0c88_bd9e_4709_ae4c_74b37fdd2a73.f2} ;;
}
}


view: table2__158f0c88_bd9e_4709_ae4c_74b37fdd2a73 {
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


view: table1__3ab863be_645a_45c1_8cb9_0db2e0d379ce {
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