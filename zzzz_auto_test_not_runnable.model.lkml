
connection:"pmdevpresto"


explore: table1__b30bb288_3a16_49a2_80b0_f0820cedf5ef {

join: table2__b5589b94_df02_4abe_9f64_06f9df73a788 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b30bb288_3a16_49a2_80b0_f0820cedf5ef.f1} = ${table2__b5589b94_df02_4abe_9f64_06f9df73a788.f2} ;;
}
}


view: table2__b5589b94_df02_4abe_9f64_06f9df73a788 {
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


view: table1__b30bb288_3a16_49a2_80b0_f0820cedf5ef {
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