
connection:"presto-qa-1"


explore: OLIST_CUSTOMERS_DATASET__b4c38729_37ce_47ba_b57b_170ecd07f5ca {

join: CAT_REGION__c3efa785_fb23_4e62_8e63_091eafbc36d3 {
 relationship: one_to_one
 sql_on: ${OLIST_CUSTOMERS_DATASET__b4c38729_37ce_47ba_b57b_170ecd07f5ca.CUSTOMER_STATE} = ${CAT_REGION__c3efa785_fb23_4e62_8e63_091eafbc36d3.REGION_CD} ;;
}
}


view: OLIST_CUSTOMERS_DATASET__b4c38729_37ce_47ba_b57b_170ecd07f5ca {
sql_table_name:oracle.RDSORACLEFORPRESTO.OLIST_CUSTOMERS_DATASET ;;
dimension: CUSTOMER_ID {
 sql: ${TABLE}.CUSTOMER_ID;;
}
dimension: CUSTOMER_UNIQUE_ID {
 sql: ${TABLE}.CUSTOMER_UNIQUE_ID;;
}
dimension: CUSTOMER_ZIP_CODE_PREFIX {
 sql: ${TABLE}.CUSTOMER_ZIP_CODE_PREFIX;;
}
dimension: CUSTOMER_CITY {
 sql: ${TABLE}.CUSTOMER_CITY;;
}
dimension: CUSTOMER_STATE {
 sql: ${TABLE}.CUSTOMER_STATE;;
}
}


view: CAT_REGION__c3efa785_fb23_4e62_8e63_091eafbc36d3 {
sql_table_name:oracle.RDSORACLEFORPRESTO.CAT_REGION ;;
measure: REGION_ID {
type:count_distinct
 sql: ${TABLE}.REGION_ID;;
}
dimension: REGION_CD {
 sql: ${TABLE}.REGION_CD;;
}
dimension: REGION_DESC {
 sql: ${TABLE}.REGION_DESC;;
}
dimension: STATE_ID {
 sql: ${TABLE}.STATE_ID;;
}
}