
connection:"presto-qa-1"


explore: US_REGIONS__4b2ad637_f4c8_48de_813e_0af596f54c7d {

join: UNEMPLOYMENT_RATE__64fc8f5b_1432_47f0_b690_c9090a510f96 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__4b2ad637_f4c8_48de_813e_0af596f54c7d.REGION_CODE} = ${UNEMPLOYMENT_RATE__64fc8f5b_1432_47f0_b690_c9090a510f96.REGION_CODE} ;;
}
}


view: US_REGIONS__4b2ad637_f4c8_48de_813e_0af596f54c7d {
sql_table_name:promethium.promethium.US_REGIONS ;;
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
dimension: REGION_NAME {
 sql: ${TABLE}.REGION_NAME;;
}
dimension: US_STATE {
 sql: ${TABLE}.US_STATE;;
}
}


view: UNEMPLOYMENT_RATE__64fc8f5b_1432_47f0_b690_c9090a510f96 {
sql_table_name:promethium.promethium.UNEMPLOYMENT_RATE ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
dimension: REGION_CODE {
 sql: ${TABLE}.REGION_CODE;;
}
measure: UNEMPLOYMENT_RATE {
type:count_distinct
 sql: ${TABLE}.UNEMPLOYMENT_RATE;;
}
dimension: YEAR {
 sql: ${TABLE}.YEAR;;
}
}