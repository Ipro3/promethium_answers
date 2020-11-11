
connection:"pmdevpresto"


explore: table1__b7cae845_41eb_4250_b753_3370d08ef508 {

join: table2__320d1eec_2814_4ecf_a3f9_eda2ebc20be0 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b7cae845_41eb_4250_b753_3370d08ef508.f1} = ${table2__320d1eec_2814_4ecf_a3f9_eda2ebc20be0.f2} ;;
}
}


view: table2__320d1eec_2814_4ecf_a3f9_eda2ebc20be0 {
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


view: table1__b7cae845_41eb_4250_b753_3370d08ef508 {
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