
connection:"pmdevpresto"


explore: table1__6eda0c08_72fe_4183_8d67_16f4502ba185 {

join: table2__483186a8_6a2e_4373_bd58_7a3dc8c160f1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__6eda0c08_72fe_4183_8d67_16f4502ba185.f1} = ${table2__483186a8_6a2e_4373_bd58_7a3dc8c160f1.f2} ;;
}
}


view: table2__483186a8_6a2e_4373_bd58_7a3dc8c160f1 {
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


view: table1__6eda0c08_72fe_4183_8d67_16f4502ba185 {
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