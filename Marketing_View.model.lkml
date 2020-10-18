
connection: "pmdevpresto"


explore: CLOSED_DEALS__583a87ca_a863_4e5c_b8be_f0c1fef8aeca {

join: olist_marketing_qualified_leads_dataset__b0f725de_4103_4852_a686_f6628fd6917e {
 relationship: one_to_one
 sql_on: ${olist_marketing_qualified_leads_dataset__b0f725de_4103_4852_a686_f6628fd6917e.col0} = ${CLOSED_DEALS__583a87ca_a863_4e5c_b8be_f0c1fef8aeca.MQL_ID} ;;
}
join: OLIST_ORDER_ITEMS_DATASET__2f575273_e9f0_467f_a768_981fbef78c3d {
 relationship: one_to_one
 sql_on: ${CLOSED_DEALS__583a87ca_a863_4e5c_b8be_f0c1fef8aeca.SELLER_ID} = ${OLIST_ORDER_ITEMS_DATASET__2f575273_e9f0_467f_a768_981fbef78c3d.SELLER_ID} ;;
}
}


view: CLOSED_DEALS__583a87ca_a863_4e5c_b8be_f0c1fef8aeca {
sql_table_name:snowflake.PUBLIC.CLOSED_DEALS ;;
dimension: MQL_ID {
 type: string
 sql: ${TABLE}.MQL_ID;;
}
dimension: SELLER_ID {
 type: string
 sql: ${TABLE}.SELLER_ID;;
}
dimension: SDR_ID {
 type: string
 sql: ${TABLE}.SDR_ID;;
}
dimension: SR_ID {
 type: string
 sql: ${TABLE}.SR_ID;;
}
dimension: WON_DATE {
 type: string
 sql: ${TABLE}.WON_DATE;;
}
dimension: BUSINESS_SEGMENT {
 type: string
 sql: ${TABLE}.BUSINESS_SEGMENT;;
}
dimension: LEAD_TYPE {
 type: string
 sql: ${TABLE}.LEAD_TYPE;;
}
dimension: LEAD_BEHAVIOUR_PROFILE {
 type: string
 sql: ${TABLE}.LEAD_BEHAVIOUR_PROFILE;;
}
dimension: HAS_COMPANY {
 type: string
 sql: ${TABLE}.HAS_COMPANY;;
}
dimension: HAS_GTIN {
 type: string
 sql: ${TABLE}.HAS_GTIN;;
}
dimension: AVERAGE_STOCK {
 type: string
 sql: ${TABLE}.AVERAGE_STOCK;;
}
dimension: BUSINESS_TYPE {
 type: string
 sql: ${TABLE}.BUSINESS_TYPE;;
}
dimension: DECLARED_PRODUCT_CATALOG_SIZE {
 type: string
 sql: ${TABLE}.DECLARED_PRODUCT_CATALOG_SIZE;;
}
dimension: DECLARED_MONTHLY_REVENUE {
 type: string
 sql: ${TABLE}.DECLARED_MONTHLY_REVENUE;;
}
dimension: ZIPCODE {
 type: string
 sql: ${TABLE}.ZIPCODE;;
}
dimension: CITY {
 type: string
 sql: ${TABLE}.CITY;;
}
dimension: STATE {
 type: string
 sql: ${TABLE}.STATE;;
}
}


view: OLIST_ORDER_ITEMS_DATASET__2f575273_e9f0_467f_a768_981fbef78c3d {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.OLIST_ORDER_ITEMS_DATASET ;;
dimension: ORDER_ID {
 type: string
 sql: ${TABLE}.ORDER_ID;;
}
dimension: ORDER_ITEM_ID {
 type: string
 sql: ${TABLE}.ORDER_ITEM_ID;;
}
dimension: PRODUCT_ID {
 type: string
 sql: ${TABLE}.PRODUCT_ID;;
}
dimension: SELLER_ID {
 type: string
 sql: ${TABLE}.SELLER_ID;;
}
dimension: SHIPPING_LIMIT_DATE {
 type: string
 sql: ${TABLE}.SHIPPING_LIMIT_DATE;;
}
dimension: PRICE {
 type: string
 sql: ${TABLE}.PRICE;;
}
dimension: FREIGHT_VALUE {
 type: string
 sql: ${TABLE}.FREIGHT_VALUE;;
}
}


view: olist_marketing_qualified_leads_dataset__b0f725de_4103_4852_a686_f6628fd6917e {
sql_table_name:hive.launch_s3.olist_marketing_qualified_leads_dataset ;;
dimension: col0 {
 type: string
 sql: ${TABLE}.col0;;
}
dimension: col1 {
 type: string
 sql: ${TABLE}.col1;;
}
dimension: col2 {
 type: string
 sql: ${TABLE}.col2;;
}
dimension: col3 {
 type: string
 sql: ${TABLE}.col3;;
}
}