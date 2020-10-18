
connection:"pmdevpresto"


explore: null__2bd4d770_12cb_40e5_b778_7c8f7844aee4 {

join: null__fbf6d4f8_7180_4594_8f07_380b64cb7726 {
 relationship: one_to_one
 sql_on: ${null__2bd4d770_12cb_40e5_b778_7c8f7844aee4.f1} = ${null__fbf6d4f8_7180_4594_8f07_380b64cb7726.f2} ;;
}
}


view: null__fbf6d4f8_7180_4594_8f07_380b64cb7726 {
sql_table_name:catalog1.db1.table2 ;;
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
}


view: null__2bd4d770_12cb_40e5_b778_7c8f7844aee4 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
}