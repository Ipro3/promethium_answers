
connection:"pmdevpresto"


explore: table1__23936f7e_ae5d_48f4_bfc3_31cbc706f434 {

join: table2__f6172c58_5654_4f92_a0b0_8b5c38219e16 {
 relationship: one_to_one
 sql_on: ${table1__23936f7e_ae5d_48f4_bfc3_31cbc706f434.f1} = ${table2__f6172c58_5654_4f92_a0b0_8b5c38219e16.f2} ;;
}
}


view: table1__23936f7e_ae5d_48f4_bfc3_31cbc706f434 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: table2__f6172c58_5654_4f92_a0b0_8b5c38219e16 {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}