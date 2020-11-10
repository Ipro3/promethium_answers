
connection:"pmdevpresto"


explore: table1__7e36f37b_9af5_44f8_b7da_ac37c9582bba {

join: table2__e15ad362_36d3_42df_a5df_580102cf7086 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__7e36f37b_9af5_44f8_b7da_ac37c9582bba.f1} = ${table2__e15ad362_36d3_42df_a5df_580102cf7086.f2} ;;
}
}


view: table2__e15ad362_36d3_42df_a5df_580102cf7086 {
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


view: table1__7e36f37b_9af5_44f8_b7da_ac37c9582bba {
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