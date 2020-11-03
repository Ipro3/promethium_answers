
connection:"pmdevpresto"


explore: CLOSED_DEALS__e68e7fe2_0abe_45b6_90f5_ba7a18b534b6 {

join: olist_marketing_qualified_leads_dataset__7b0b00df_5572_4bc4_9ba8_7e1e900f88d2 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${olist_marketing_qualified_leads_dataset__7b0b00df_5572_4bc4_9ba8_7e1e900f88d2.col0} >= ${CLOSED_DEALS__e68e7fe2_0abe_45b6_90f5_ba7a18b534b6.MQL_ID} ;;
}
join: OLIST_ORDER_ITEMS_DATASET__35585b0d_3125_4d8c_9bcf_afa8f27b75d3 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${CLOSED_DEALS__e68e7fe2_0abe_45b6_90f5_ba7a18b534b6.SELLER_ID} <= ${OLIST_ORDER_ITEMS_DATASET__35585b0d_3125_4d8c_9bcf_afa8f27b75d3.SELLER_ID} ;;
}
}


view: OLIST_ORDER_ITEMS_DATASET__35585b0d_3125_4d8c_9bcf_afa8f27b75d3 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.OLIST_ORDER_ITEMS_DATASET ;;
dimension: ORDER_ID {
 sql: ${TABLE}.ORDER_ID;;
}
dimension: ORDER_ITEM_ID {
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
dimension: PRICE {
 sql: ${TABLE}.PRICE;;
}
dimension: FREIGHT_VALUE {
 sql: ${TABLE}.FREIGHT_VALUE;;
}
measure: ORDER_ITEM_ID_count {
type:count
 drill_fields: [detail*]
}
measure: ORDER_ITEM_ID_sum {
type:sum
sql: ${ORDER_ITEM_ID} ;;
 drill_fields: [detail*]
}
measure: PRICE_count {
type:count
 drill_fields: [detail*]
}
measure: PRICE_sum {
type:sum
sql: ${PRICE} ;;
 drill_fields: [detail*]
}
measure: FREIGHT_VALUE_count {
type:count
 drill_fields: [detail*]
}
measure: FREIGHT_VALUE_sum {
type:sum
sql: ${FREIGHT_VALUE} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ORDER_ID, ORDER_ITEM_ID, PRODUCT_ID, SELLER_ID, PRICE, FREIGHT_VALUE]
}
}


view: CLOSED_DEALS__e68e7fe2_0abe_45b6_90f5_ba7a18b534b6 {
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


view: olist_marketing_qualified_leads_dataset__7b0b00df_5572_4bc4_9ba8_7e1e900f88d2 {
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