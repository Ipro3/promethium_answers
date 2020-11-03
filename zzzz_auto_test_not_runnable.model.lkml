
connection:"pmdevpresto"


explore: table1__0111d940_7679_49fc_9ecb_0a4df9e7865e {

join: table2__0cb0229d_7484_4a95_941c_2285b8e3d733 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0111d940_7679_49fc_9ecb_0a4df9e7865e.f1} = ${table2__0cb0229d_7484_4a95_941c_2285b8e3d733.f2} ;;
}
}


view: table1__0111d940_7679_49fc_9ecb_0a4df9e7865e {
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


view: table2__0cb0229d_7484_4a95_941c_2285b8e3d733 {
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