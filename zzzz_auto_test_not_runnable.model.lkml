
connection:"pmdevpresto"


explore: table1__b1b7a332_d902_48c4_9d86_22ddb82199ea {

join: table2__2baf736b_58d1_41e5_bff9_16b111743b4a {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__b1b7a332_d902_48c4_9d86_22ddb82199ea.f1} = ${table2__2baf736b_58d1_41e5_bff9_16b111743b4a.f2} ;;
}
}


view: table1__b1b7a332_d902_48c4_9d86_22ddb82199ea {
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
}


view: table2__2baf736b_58d1_41e5_bff9_16b111743b4a {
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
}