
connection:"presto-qa-1"


explore: UNEMPLOYMENT_RATE__dfb96436_7d05_4041_af11_b10968405f77 {

}


view: UNEMPLOYMENT_RATE__dfb96436_7d05_4041_af11_b10968405f77 {
sql_table_name:promethium.promethium.UNEMPLOYMENT_RATE ;;
dimension: SERIES_ID {
 sql: ${TABLE}.SERIES_ID;;
}
measure: REGION_CODE {
type:count_distinct
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