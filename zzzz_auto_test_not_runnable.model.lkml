
connection:"pmdevpresto"


explore: table1__2ebfa31f_35b9_4337_8bfa_42262b0a132a {

join: table2__1e8ae03d_5f09_4c63_b08c_fe84c228524c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__2ebfa31f_35b9_4337_8bfa_42262b0a132a.f1} = ${table2__1e8ae03d_5f09_4c63_b08c_fe84c228524c.f2} ;;
}
}


view: table2__1e8ae03d_5f09_4c63_b08c_fe84c228524c {
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


view: table1__2ebfa31f_35b9_4337_8bfa_42262b0a132a {
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