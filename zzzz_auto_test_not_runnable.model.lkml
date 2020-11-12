
connection:"pmdevpresto"


explore: table1__32a212ff_eeda_4dca_a6a3_a753888529c1 {

join: table2__e79d3390_8ef4_4a17_9042_4f9ce07f9945 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__32a212ff_eeda_4dca_a6a3_a753888529c1.f1} = ${table2__e79d3390_8ef4_4a17_9042_4f9ce07f9945.f2} ;;
}
}


view: table2__e79d3390_8ef4_4a17_9042_4f9ce07f9945 {
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


view: table1__32a212ff_eeda_4dca_a6a3_a753888529c1 {
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