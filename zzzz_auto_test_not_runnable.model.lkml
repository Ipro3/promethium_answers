
connection:"pmdevpresto"


explore: table1__fdde3620_7820_43b8_8ed5_ac08f297c5cd {

join: table2__602aa5cf_d3a4_47dc_b4c1_51f45f43da5d {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__fdde3620_7820_43b8_8ed5_ac08f297c5cd.f1} = ${table2__602aa5cf_d3a4_47dc_b4c1_51f45f43da5d.f2} ;;
}
}


view: table2__602aa5cf_d3a4_47dc_b4c1_51f45f43da5d {
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


view: table1__fdde3620_7820_43b8_8ed5_ac08f297c5cd {
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