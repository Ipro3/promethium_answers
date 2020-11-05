
connection:"pmdevpresto"


explore: table1__3c206f6f_5cbf_4bae_889f_f10a60e52723 {

join: table2__9c79b37b_c1e1_449d_820f_4f8a440f85a1 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__3c206f6f_5cbf_4bae_889f_f10a60e52723.f1} = ${table2__9c79b37b_c1e1_449d_820f_4f8a440f85a1.f2} ;;
}
}


view: table2__9c79b37b_c1e1_449d_820f_4f8a440f85a1 {
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


view: table1__3c206f6f_5cbf_4bae_889f_f10a60e52723 {
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