
connection:"pmdevpresto"


explore: table1__e77ff271_c300_435c_bb39_8879816fc2e4 {

join: table2__d70fa778_1e6c_42f8_9252_610ca2c898d3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__e77ff271_c300_435c_bb39_8879816fc2e4.f1} = ${table2__d70fa778_1e6c_42f8_9252_610ca2c898d3.f2} ;;
}
}


view: table2__d70fa778_1e6c_42f8_9252_610ca2c898d3 {
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
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [f0, f1, f2]
}
}


view: table1__e77ff271_c300_435c_bb39_8879816fc2e4 {
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
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [f0, f1, f2]
}
}