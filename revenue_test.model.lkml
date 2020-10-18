
connection: "pmdevpresto"


explore: CLOSED_DEALS__be2a3df7_d300_4919_9574_a74cfb0f73ce {

join: MASTER_PLAN_TABLE_WDATES__55fc1f84_c8ef_4c40_8e30_b7d71822bedb {
 relationship: one_to_one
 sql_on: ${CLOSED_DEALS__be2a3df7_d300_4919_9574_a74cfb0f73ce.DECLARED_MONTHLY_REVENUE} = ${MASTER_PLAN_TABLE_WDATES__55fc1f84_c8ef_4c40_8e30_b7d71822bedb.MER} ;;
}
}


view: CLOSED_DEALS__be2a3df7_d300_4919_9574_a74cfb0f73ce {
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


view: MASTER_PLAN_TABLE_WDATES__55fc1f84_c8ef_4c40_8e30_b7d71822bedb {
sql_table_name:pm61_snowflake.SCHEMA_INFO.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
 type: string
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 type: string
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: MER {
 type: string
 sql: ${TABLE}.MER;;
}
dimension: DISC {
 type: string
 sql: ${TABLE}.DISC;;
}
dimension: PACKAGE {
 type: string
 sql: ${TABLE}.PACKAGE;;
}
dimension: LEN {
 type: string
 sql: ${TABLE}.LEN;;
}
dimension: ROLLUP1 {
 type: string
 sql: ${TABLE}.ROLLUP1;;
}
dimension: ASP {
 type: string
 sql: ${TABLE}.ASP;;
}
dimension: STARTDATE {
 type: string
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 type: string
 sql: ${TABLE}.ENDDATE;;
}
}