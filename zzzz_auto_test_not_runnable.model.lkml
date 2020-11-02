
connection:"pmdevpresto"


explore: table1__861f6503_7000_4309_870b_02145578a176 {

join: table2__a096bb60_58a3_43c8_8913_03d75c39c5ae {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__861f6503_7000_4309_870b_02145578a176.f1} = ${table2__a096bb60_58a3_43c8_8913_03d75c39c5ae.f2} ;;
}
}


view: table2__a096bb60_58a3_43c8_8913_03d75c39c5ae {
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


view: table1__861f6503_7000_4309_870b_02145578a176 {
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