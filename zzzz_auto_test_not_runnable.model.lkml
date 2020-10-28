
connection:"pmdevpresto"


explore: table1__1b921438_e5af_4685_8166_66f2887a7abf {

join: table2__33ac65c6_99ca_44af_a6b0_7d676c35293d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1b921438_e5af_4685_8166_66f2887a7abf.f1} = ${table2__33ac65c6_99ca_44af_a6b0_7d676c35293d.f2} ;;
}
}


view: table1__1b921438_e5af_4685_8166_66f2887a7abf {
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


view: table2__33ac65c6_99ca_44af_a6b0_7d676c35293d {
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