
connection:"pmdevpresto"


explore: table1__ac031592_1edc_4c47_84f4_ffaa7ee142ea {

join: table2__a0e09ec0_8fa1_4720_ab70_9a28a5103b1f {
 relationship: one_to_one
 sql_on: ${table1__ac031592_1edc_4c47_84f4_ffaa7ee142ea.f1} = ${table2__a0e09ec0_8fa1_4720_ab70_9a28a5103b1f.f2} ;;
}
}


view: table2__a0e09ec0_8fa1_4720_ab70_9a28a5103b1f {
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


view: table1__ac031592_1edc_4c47_84f4_ffaa7ee142ea {
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