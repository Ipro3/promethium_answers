
connection:"presto-qa-1"


explore: US_REGIONS__4b9ea515_40a1_4310_879c_80d507b1e6b2 {

join: UNEMPLOYMENT_RATE__4db4103a_fa58_4de0_b58f_05394c6bf8c6 {
 relationship: one_to_one
 sql_on: ${US_REGIONS__4b9ea515_40a1_4310_879c_80d507b1e6b2.REGION_CODE} = ${UNEMPLOYMENT_RATE__4db4103a_fa58_4de0_b58f_05394c6bf8c6.REGION_CODE} ;;
}
}


view: UNEMPLOYMENT_RATE__4db4103a_fa58_4de0_b58f_05394c6bf8c6 {
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


view: US_REGIONS__4b9ea515_40a1_4310_879c_80d507b1e6b2 {
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