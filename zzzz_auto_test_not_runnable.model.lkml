
connection:"pmdevpresto"


explore: table1__cc872cad_053e_48ff_81d2_088678968299 {

join: table2__6e9f3750_29b6_4300_a1d8_d6635eab6597 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__cc872cad_053e_48ff_81d2_088678968299.f1} = ${table2__6e9f3750_29b6_4300_a1d8_d6635eab6597.f2} ;;
}
}


view: table1__cc872cad_053e_48ff_81d2_088678968299 {
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


view: table2__6e9f3750_29b6_4300_a1d8_d6635eab6597 {
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