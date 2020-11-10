
connection:"pmdevpresto"


explore: table1__fccd0205_48e5_426b_8948_62e82b04448b {

join: table2__255975e8_4866_4e62_a435_9cc85e6a3027 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fccd0205_48e5_426b_8948_62e82b04448b.f1} = ${table2__255975e8_4866_4e62_a435_9cc85e6a3027.f2} ;;
}
}


view: table1__fccd0205_48e5_426b_8948_62e82b04448b {
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


view: table2__255975e8_4866_4e62_a435_9cc85e6a3027 {
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