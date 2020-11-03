
connection:"pmdevpresto"


explore: table1__91254d2f_37f3_4802_ac2f_2c32feba543f {

join: table2__5425c7c3_e509_4f64_b122_dafda9dbb6dc {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__91254d2f_37f3_4802_ac2f_2c32feba543f.f1} = ${table2__5425c7c3_e509_4f64_b122_dafda9dbb6dc.f2} ;;
}
}


view: table2__5425c7c3_e509_4f64_b122_dafda9dbb6dc {
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


view: table1__91254d2f_37f3_4802_ac2f_2c32feba543f {
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