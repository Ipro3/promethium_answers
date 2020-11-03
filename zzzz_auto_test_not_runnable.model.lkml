
connection:"pmdevpresto"


explore: table1__142d8c7a_5c8b_48a6_a34c_bc87adde101a {

join: table2__87da0e0b_a839_4794_a015_4656e91a1e41 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__142d8c7a_5c8b_48a6_a34c_bc87adde101a.f1} = ${table2__87da0e0b_a839_4794_a015_4656e91a1e41.f2} ;;
}
}


view: table2__87da0e0b_a839_4794_a015_4656e91a1e41 {
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


view: table1__142d8c7a_5c8b_48a6_a34c_bc87adde101a {
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