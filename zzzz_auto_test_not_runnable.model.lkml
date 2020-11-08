
connection:"pmdevpresto"


explore: table1__e8f942f4_61ef_48be_9e96_773a02df4c7c {

join: table2__0ecdca77_bbd2_4e0f_9280_3c3708c83cbb {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e8f942f4_61ef_48be_9e96_773a02df4c7c.f1} = ${table2__0ecdca77_bbd2_4e0f_9280_3c3708c83cbb.f2} ;;
}
}


view: table1__e8f942f4_61ef_48be_9e96_773a02df4c7c {
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


view: table2__0ecdca77_bbd2_4e0f_9280_3c3708c83cbb {
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