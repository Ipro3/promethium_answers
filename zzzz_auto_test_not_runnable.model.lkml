
connection:"pmdevpresto"


explore: table1__1269c369_fdd4_4df5_a801_cfb15e518d6f {

join: table2__bc5f89be_0331_4fc8_b16d_ae06f2126467 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${table1__1269c369_fdd4_4df5_a801_cfb15e518d6f.f1} = ${table2__bc5f89be_0331_4fc8_b16d_ae06f2126467.f2} ;;
}
}


view: table2__bc5f89be_0331_4fc8_b16d_ae06f2126467 {
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


view: table1__1269c369_fdd4_4df5_a801_cfb15e518d6f {
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