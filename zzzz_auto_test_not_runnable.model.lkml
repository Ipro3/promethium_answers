
connection:"pmdevpresto"


explore: table1__08dd63f6_fed3_49f7_9b7e_2aaba06153cf {

join: table2__06f1f222_4e2f_4cbb_ada7_030085cab7b4 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__08dd63f6_fed3_49f7_9b7e_2aaba06153cf.f1} = ${table2__06f1f222_4e2f_4cbb_ada7_030085cab7b4.f2} ;;
}
}


view: table2__06f1f222_4e2f_4cbb_ada7_030085cab7b4 {
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


view: table1__08dd63f6_fed3_49f7_9b7e_2aaba06153cf {
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