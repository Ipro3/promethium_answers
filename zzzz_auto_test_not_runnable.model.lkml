
connection:"pmdevpresto"


explore: table1__72415460_7965_4836_96c4_fcfe3a2fb429 {

join: table2__7f247ffd_7206_4b2e_887b_60e636326493 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__72415460_7965_4836_96c4_fcfe3a2fb429.f1} = ${table2__7f247ffd_7206_4b2e_887b_60e636326493.f2} ;;
}
}


view: table1__72415460_7965_4836_96c4_fcfe3a2fb429 {
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


view: table2__7f247ffd_7206_4b2e_887b_60e636326493 {
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