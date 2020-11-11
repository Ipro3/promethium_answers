
connection:"pmdevpresto"


explore: table1__ae2ade1a_fa25_4810_b937_129681f2d115 {

join: table2__970cc07f_e5d3_40d4_9674_c39916be5b9c {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__ae2ade1a_fa25_4810_b937_129681f2d115.f1} = ${table2__970cc07f_e5d3_40d4_9674_c39916be5b9c.f2} ;;
}
}


view: table1__ae2ade1a_fa25_4810_b937_129681f2d115 {
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


view: table2__970cc07f_e5d3_40d4_9674_c39916be5b9c {
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