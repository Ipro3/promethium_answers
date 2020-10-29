
connection:"pmdevpresto"


explore: table1__86c65696_f923_4010_b1a4_dc37160a088f {

join: table2__aef432ec_1085_47e4_bbe7_3c7615b5302e {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__86c65696_f923_4010_b1a4_dc37160a088f.f1} = ${table2__aef432ec_1085_47e4_bbe7_3c7615b5302e.f2} ;;
}
}


view: table1__86c65696_f923_4010_b1a4_dc37160a088f {
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


view: table2__aef432ec_1085_47e4_bbe7_3c7615b5302e {
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