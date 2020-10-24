
connection:"pmdevpresto"


explore: table1__ca0423aa_ee01_4283_8f54_0d091379e164 {

join: table2__e297210e_3235_40e2_a563_f35c81c072a2 {
 relationship: one_to_one
 sql_on: ${table1__ca0423aa_ee01_4283_8f54_0d091379e164.f1} = ${table2__e297210e_3235_40e2_a563_f35c81c072a2.f2} ;;
}
}


view: table1__ca0423aa_ee01_4283_8f54_0d091379e164 {
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


view: table2__e297210e_3235_40e2_a563_f35c81c072a2 {
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