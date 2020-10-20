
connection:"pmdevpresto"


explore: CLOSED_DEALS__53f04581_520f_4bbb_882c_577080f99009 {

join: olist_marketing_qualified_leads_dataset__0a83d0e4_12b1_4981_9787_c096307dc2da {
 relationship: one_to_one
 sql_on: ${olist_marketing_qualified_leads_dataset__0a83d0e4_12b1_4981_9787_c096307dc2da.col0} = ${CLOSED_DEALS__53f04581_520f_4bbb_882c_577080f99009.MQL_ID} ;;
}
join: OLIST_ORDER_ITEMS_DATASET__cb451e65_a40f_4ee1_bb64_c2c893c5d464 {
 relationship: one_to_one
 sql_on: ${CLOSED_DEALS__53f04581_520f_4bbb_882c_577080f99009.SELLER_ID} = ${OLIST_ORDER_ITEMS_DATASET__cb451e65_a40f_4ee1_bb64_c2c893c5d464.SELLER_ID} ;;
}
}


view: olist_marketing_qualified_leads_dataset__0a83d0e4_12b1_4981_9787_c096307dc2da {
sql_table_name:hive.launch_s3.olist_marketing_qualified_leads_dataset ;;
dimension: col0 {
 sql: ${TABLE}.col0;;
}
dimension: col1 {
 sql: ${TABLE}.col1;;
}
dimension: col2 {
 sql: ${TABLE}.col2;;
}
dimension: col3 {
 sql: ${TABLE}.col3;;
}
}


view: OLIST_ORDER_ITEMS_DATASET__cb451e65_a40f_4ee1_bb64_c2c893c5d464 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.OLIST_ORDER_ITEMS_DATASET ;;
dimension: ORDER_ID {
 sql: ${TABLE}.ORDER_ID;;
}
measure: ORDER_ITEM_ID {
type:count_distinct
 sql: ${TABLE}.ORDER_ITEM_ID;;
}
dimension: PRODUCT_ID {
 sql: ${TABLE}.PRODUCT_ID;;
}
dimension: SELLER_ID {
 sql: ${TABLE}.SELLER_ID;;
}
dimension: SHIPPING_LIMIT_DATE {
 sql: ${TABLE}.SHIPPING_LIMIT_DATE;;
}
measure: PRICE {
type:count_distinct
 sql: ${TABLE}.PRICE;;
}
measure: FREIGHT_VALUE {
type:count_distinct
 sql: ${TABLE}.FREIGHT_VALUE;;
}
}


view: CLOSED_DEALS__53f04581_520f_4bbb_882c_577080f99009 {
sql_table_name:snowflake.PUBLIC.CLOSED_DEALS ;;
dimension: MQL_ID {
 sql: ${TABLE}.MQL_ID;;
}
dimension: SELLER_ID {
 sql: ${TABLE}.SELLER_ID;;
}
dimension: SDR_ID {
 sql: ${TABLE}.SDR_ID;;
}
dimension: SR_ID {
 sql: ${TABLE}.SR_ID;;
}
dimension: WON_DATE {
 sql: ${TABLE}.WON_DATE;;
}
dimension: BUSINESS_SEGMENT {
 sql: ${TABLE}.BUSINESS_SEGMENT;;
}
dimension: LEAD_TYPE {
 sql: ${TABLE}.LEAD_TYPE;;
}
dimension: LEAD_BEHAVIOUR_PROFILE {
 sql: ${TABLE}.LEAD_BEHAVIOUR_PROFILE;;
}
dimension: HAS_COMPANY {
 sql: ${TABLE}.HAS_COMPANY;;
}
dimension: HAS_GTIN {
 sql: ${TABLE}.HAS_GTIN;;
}
dimension: AVERAGE_STOCK {
 sql: ${TABLE}.AVERAGE_STOCK;;
}
dimension: BUSINESS_TYPE {
 sql: ${TABLE}.BUSINESS_TYPE;;
}
dimension: DECLARED_PRODUCT_CATALOG_SIZE {
 sql: ${TABLE}.DECLARED_PRODUCT_CATALOG_SIZE;;
}
dimension: DECLARED_MONTHLY_REVENUE {
 sql: ${TABLE}.DECLARED_MONTHLY_REVENUE;;
}
dimension: ZIPCODE {
 sql: ${TABLE}.ZIPCODE;;
}
dimension: CITY {
 sql: ${TABLE}.CITY;;
}
dimension: STATE {
 sql: ${TABLE}.STATE;;
}
}