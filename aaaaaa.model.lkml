
connection:"pmdevpresto"


explore: table1__fd0d83cb_9e15_480b_88c3_36564edb38b8 {

join: table2__d90e1c1b_cd4f_40e3_98dd_1f942dd1cb2c {
 relationship: one_to_one
 sql_on: ${table1__fd0d83cb_9e15_480b_88c3_36564edb38b8.f1} = ${table2__d90e1c1b_cd4f_40e3_98dd_1f942dd1cb2c.f2} ;;
}
}


view: table1__fd0d83cb_9e15_480b_88c3_36564edb38b8 {
sql_table_name:catalog1.db1.table1 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}


view: table2__d90e1c1b_cd4f_40e3_98dd_1f942dd1cb2c {
sql_table_name:catalog1.db1.table2 ;;
dimension: f0 {
 type: string
 sql: ${TABLE}.f0;;
}
dimension: f1 {
 type: string
 sql: ${TABLE}.f1;;
}
dimension: f2 {
 type: string
 sql: ${TABLE}.f2;;
}
}