
connection:"pmdevpresto"


explore: table1__7a71fd51_eff1_47bd_9049_dc7016ba552d {

join: table2__69cb9c58_9d45_4582_a390_2832d7900fde {
 relationship: one_to_one
 sql_on: ${table1__7a71fd51_eff1_47bd_9049_dc7016ba552d.f1} = ${table2__69cb9c58_9d45_4582_a390_2832d7900fde.f2} ;;
}
}


view: table1__7a71fd51_eff1_47bd_9049_dc7016ba552d {
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


view: table2__69cb9c58_9d45_4582_a390_2832d7900fde {
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