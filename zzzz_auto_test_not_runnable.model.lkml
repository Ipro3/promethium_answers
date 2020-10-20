
connection:"pmdevpresto"


explore: table1__ba5b724a_781b_4bcb_9970_72d4bd409bab {

join: table2__df5ae694_100a_4c54_aac7_eca39cf5575c {
 relationship: one_to_one
 sql_on: ${table1__ba5b724a_781b_4bcb_9970_72d4bd409bab.f1} = ${table2__df5ae694_100a_4c54_aac7_eca39cf5575c.f2} ;;
}
}


view: table1__ba5b724a_781b_4bcb_9970_72d4bd409bab {
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


view: table2__df5ae694_100a_4c54_aac7_eca39cf5575c {
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