
connection:"pmdevpresto"


explore: table1__0484a52f_2758_4efb_8752_185a1a95d9bc {

join: table2__1fba838e_ed16_48b5_872f_f6f4d3789587 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__0484a52f_2758_4efb_8752_185a1a95d9bc.f1} = ${table2__1fba838e_ed16_48b5_872f_f6f4d3789587.f2} ;;
}
}


view: table2__1fba838e_ed16_48b5_872f_f6f4d3789587 {
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


view: table1__0484a52f_2758_4efb_8752_185a1a95d9bc {
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