
connection:"pmdevpresto"


explore: table1__ba809586_6945_4b05_a275_afc8eb2c068d {

join: table2__a5961ba5_27d6_47ee_bd0a_34ccc97fecc6 {
 relationship: one_to_one
 sql_on: ${table1__ba809586_6945_4b05_a275_afc8eb2c068d.f1} = ${table2__a5961ba5_27d6_47ee_bd0a_34ccc97fecc6.f2} ;;
}
}


view: table2__a5961ba5_27d6_47ee_bd0a_34ccc97fecc6 {
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


view: table1__ba809586_6945_4b05_a275_afc8eb2c068d {
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