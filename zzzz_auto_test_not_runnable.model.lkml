
connection:"pmdevpresto"


explore: table1__a73764d8_6364_4e26_884b_dabd8b5b7b1a {

join: table2__3311d5fb_d4c3_47be_8011_7df703b064a9 {
 relationship: one_to_one
 sql_on: ${table1__a73764d8_6364_4e26_884b_dabd8b5b7b1a.f1} = ${table2__3311d5fb_d4c3_47be_8011_7df703b064a9.f2} ;;
}
}


view: table2__3311d5fb_d4c3_47be_8011_7df703b064a9 {
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


view: table1__a73764d8_6364_4e26_884b_dabd8b5b7b1a {
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