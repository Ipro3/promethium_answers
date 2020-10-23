
connection:"pmdevpresto"


explore: table1__63306794_6372_42ea_b030_4ffddb442f7e {

join: table2__20ada404_5f9a_4b51_b7c7_29039ece2620 {
 relationship: one_to_one
 sql_on: ${table1__63306794_6372_42ea_b030_4ffddb442f7e.f1} = ${table2__20ada404_5f9a_4b51_b7c7_29039ece2620.f2} ;;
}
}


view: table2__20ada404_5f9a_4b51_b7c7_29039ece2620 {
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


view: table1__63306794_6372_42ea_b030_4ffddb442f7e {
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