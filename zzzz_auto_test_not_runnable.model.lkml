
connection:"pmdevpresto"


explore: table1__592cfe15_89a7_4007_bad5_ba1425b1b9ef {

join: table2__4bfb5156_7ccd_49c4_8fbd_bf9e1da0cdf5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__592cfe15_89a7_4007_bad5_ba1425b1b9ef.f1} = ${table2__4bfb5156_7ccd_49c4_8fbd_bf9e1da0cdf5.f2} ;;
}
}


view: table1__592cfe15_89a7_4007_bad5_ba1425b1b9ef {
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


view: table2__4bfb5156_7ccd_49c4_8fbd_bf9e1da0cdf5 {
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