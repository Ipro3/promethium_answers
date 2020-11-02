
connection:"pmdevpresto"


explore: table1__f7280504_6678_48e4_9f0d_5456ae5a518f {

join: table2__1594fd47_283c_4d3b_a821_5920bff1d11b {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__f7280504_6678_48e4_9f0d_5456ae5a518f.f1} = ${table2__1594fd47_283c_4d3b_a821_5920bff1d11b.f2} ;;
}
}


view: table2__1594fd47_283c_4d3b_a821_5920bff1d11b {
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


view: table1__f7280504_6678_48e4_9f0d_5456ae5a518f {
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