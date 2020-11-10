
connection:"pmdevpresto"


explore: table1__0834bed1_885c_4850_94ca_c97c56095b4f {

join: table2__8bc96de0_7469_4f73_aa4f_c7910ff1b69f {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0834bed1_885c_4850_94ca_c97c56095b4f.f1} = ${table2__8bc96de0_7469_4f73_aa4f_c7910ff1b69f.f2} ;;
}
}


view: table2__8bc96de0_7469_4f73_aa4f_c7910ff1b69f {
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


view: table1__0834bed1_885c_4850_94ca_c97c56095b4f {
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