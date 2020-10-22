
connection:"presto-qa-1"


explore: CONTRACT__7857e09e_898d_48db_a8d1_0faa67fdb059 {

join: FACT_SATISFACTION_SURVEY__e74853a7_5be4_4667_b628_67a3a6107785 {
 relationship: one_to_one
 sql_on: ${CONTRACT__7857e09e_898d_48db_a8d1_0faa67fdb059.BILLINGLATITUDE} = ${FACT_SATISFACTION_SURVEY__e74853a7_5be4_4667_b628_67a3a6107785.CUSTOMER_NUMBER} 
 and ${FACT_SATISFACTION_SURVEY__e74853a7_5be4_4667_b628_67a3a6107785.SURVEY_DATE} = ${CONTRACT__7857e09e_898d_48db_a8d1_0faa67fdb059.STARTDATE} ;;
}
join: FACT_SATISFACTION_SURVEY2__e8e329d5_4dc1_4562_be7c_dcfae1e0e143 {
 relationship: one_to_one
 sql_on: ${CONTRACT__7857e09e_898d_48db_a8d1_0faa67fdb059.STARTDATE} = ${FACT_SATISFACTION_SURVEY2__e8e329d5_4dc1_4562_be7c_dcfae1e0e143.SURVEY_DATE} ;;
}
join: FACT_SATISFACTION_SURVEY__ea1a93f5_e492_4a0a_93e7_6183cc83db10 {
 relationship: one_to_one
 sql_on: ${FACT_SATISFACTION_SURVEY__e74853a7_5be4_4667_b628_67a3a6107785.COLUMN0} = ${FACT_SATISFACTION_SURVEY__ea1a93f5_e492_4a0a_93e7_6183cc83db10.ROW_INDEX} ;;
}
}


view: FACT_SATISFACTION_SURVEY__e74853a7_5be4_4667_b628_67a3a6107785 {
sql_table_name:snowflake.SCHEMA_INFO.FACT_SATISFACTION_SURVEY ;;
dimension: COLUMN0 {
 sql: ${TABLE}.COLUMN0;;
}
measure: FACT_SURVEY_ID {
type:count_distinct
 sql: ${TABLE}.FACT_SURVEY_ID;;
}
dimension: RELATED_CUSTOMER_SERVICE_TICKET_ID {
 sql: ${TABLE}.RELATED_CUSTOMER_SERVICE_TICKET_ID;;
}
measure: SURVEY_CREATEDDATEKEY {
type:count_distinct
 sql: ${TABLE}.SURVEY_CREATEDDATEKEY;;
}
dimension: SURVEY_DATE {
 sql: ${TABLE}.SURVEY_DATE;;
}
dimension: SURVEY_DATETIME {
 sql: ${TABLE}.SURVEY_DATETIME;;
}
dimension: CUSTOMER_NUMBER {
 sql: ${TABLE}.CUSTOMER_NUMBER;;
}
measure: USER_ID {
type:count_distinct
 sql: ${TABLE}.USER_ID;;
}
dimension: PHONE_NUMBER {
 sql: ${TABLE}.PHONE_NUMBER;;
}
dimension: SURVEY_CUSTOMER_HANDLE {
 sql: ${TABLE}.SURVEY_CUSTOMER_HANDLE;;
}
measure: SERVICE_SATISFACTION_SCORE {
type:count_distinct
 sql: ${TABLE}.SERVICE_SATISFACTION_SCORE;;
}
measure: SERVICE_PERSONEL_SCORE {
type:count_distinct
 sql: ${TABLE}.SERVICE_PERSONEL_SCORE;;
}
measure: EASE_OF_SERVICE_SCORE {
type:count_distinct
 sql: ${TABLE}.EASE_OF_SERVICE_SCORE;;
}
dimension: ISSUE_RESOLVED {
 sql: ${TABLE}.ISSUE_RESOLVED;;
}
measure: CST_RAISED_BU_ID {
type:count_distinct
 sql: ${TABLE}.CST_RAISED_BU_ID;;
}
measure: DIM_RESELLER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_RESELLER_ID;;
}
measure: DIM_SURVEY_TRANSACTION_TYPE_ID {
type:count_distinct
 sql: ${TABLE}.DIM_SURVEY_TRANSACTION_TYPE_ID;;
}
measure: DIM_SURVEY_SYSTEM_ID {
type:count_distinct
 sql: ${TABLE}.DIM_SURVEY_SYSTEM_ID;;
}
measure: DIM_USER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_USER_ID;;
}
}


view: FACT_SATISFACTION_SURVEY2__e8e329d5_4dc1_4562_be7c_dcfae1e0e143 {
sql_table_name:oracle.RDSORACLEFORPRESTO.FACT_SATISFACTION_SURVEY2 ;;
measure: ROW_INDEX {
type:count_distinct
 sql: ${TABLE}.ROW_INDEX;;
}
measure: FACT_SURVEY_ID {
type:count_distinct
 sql: ${TABLE}.FACT_SURVEY_ID;;
}
dimension: RELATED_CUSTOMER_TICKET_ID {
 sql: ${TABLE}.RELATED_CUSTOMER_TICKET_ID;;
}
measure: SURVEY_CREATEDDATEKEY {
type:count_distinct
 sql: ${TABLE}.SURVEY_CREATEDDATEKEY;;
}
dimension: SURVEY_DATE {
 sql: ${TABLE}.SURVEY_DATE;;
}
dimension: SURVEY_DATETIME {
 sql: ${TABLE}.SURVEY_DATETIME;;
}
measure: CUSTOMER_NUMBER {
type:count_distinct
 sql: ${TABLE}.CUSTOMER_NUMBER;;
}
dimension: USER_ID {
 sql: ${TABLE}.USER_ID;;
}
dimension: PHONE_NUMBER {
 sql: ${TABLE}.PHONE_NUMBER;;
}
dimension: SURVEY_CUSTOMER_HANDLE {
 sql: ${TABLE}.SURVEY_CUSTOMER_HANDLE;;
}
measure: SERVICE_SATISFACTION_SCORE {
type:count_distinct
 sql: ${TABLE}.SERVICE_SATISFACTION_SCORE;;
}
measure: SERVICE_PERSONEL_SCORE {
type:count_distinct
 sql: ${TABLE}.SERVICE_PERSONEL_SCORE;;
}
measure: EASE_OF_SERVICE_SCORE {
type:count_distinct
 sql: ${TABLE}.EASE_OF_SERVICE_SCORE;;
}
dimension: ISSUE_RESOLVED {
 sql: ${TABLE}.ISSUE_RESOLVED;;
}
measure: CST_RAISED_BU_ID {
type:count_distinct
 sql: ${TABLE}.CST_RAISED_BU_ID;;
}
measure: DIM_RESELLER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_RESELLER_ID;;
}
measure: DIM_SURVEY_TRANSACTION_TYPE_ID {
type:count_distinct
 sql: ${TABLE}.DIM_SURVEY_TRANSACTION_TYPE_ID;;
}
measure: DIM_SURVEY_SYSTEM_ID {
type:count_distinct
 sql: ${TABLE}.DIM_SURVEY_SYSTEM_ID;;
}
measure: DIM_USER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_USER_ID;;
}
}


view: FACT_SATISFACTION_SURVEY__ea1a93f5_e492_4a0a_93e7_6183cc83db10 {
sql_table_name:oracle.RDSORACLEFORPRESTO.FACT_SATISFACTION_SURVEY ;;
dimension: ROW_INDEX {
 sql: ${TABLE}.ROW_INDEX;;
}
measure: FACT_SURVEY_ID {
type:count_distinct
 sql: ${TABLE}.FACT_SURVEY_ID;;
}
dimension: RELATED_CUSTOMER_TICKET_ID {
 sql: ${TABLE}.RELATED_CUSTOMER_TICKET_ID;;
}
measure: SURVEY_CREATEDDATEKEY {
type:count_distinct
 sql: ${TABLE}.SURVEY_CREATEDDATEKEY;;
}
dimension: SURVEY_DATE {
 sql: ${TABLE}.SURVEY_DATE;;
}
dimension: SURVEY_DATETIME {
 sql: ${TABLE}.SURVEY_DATETIME;;
}
measure: CUSTOMER_NUMBER {
type:count_distinct
 sql: ${TABLE}.CUSTOMER_NUMBER;;
}
dimension: USER_ID {
 sql: ${TABLE}.USER_ID;;
}
dimension: PHONE_NUMBER {
 sql: ${TABLE}.PHONE_NUMBER;;
}
dimension: SURVEY_CUSTOMER_HANDLE {
 sql: ${TABLE}.SURVEY_CUSTOMER_HANDLE;;
}
measure: SERVICE_SATISFACTION_SCORE {
type:count_distinct
 sql: ${TABLE}.SERVICE_SATISFACTION_SCORE;;
}
measure: SERVICE_PERSONEL_SCORE {
type:count_distinct
 sql: ${TABLE}.SERVICE_PERSONEL_SCORE;;
}
measure: EASE_OF_SERVICE_SCORE {
type:count_distinct
 sql: ${TABLE}.EASE_OF_SERVICE_SCORE;;
}
dimension: ISSUE_RESOLVED {
 sql: ${TABLE}.ISSUE_RESOLVED;;
}
measure: CST_RAISED_BU_ID {
type:count_distinct
 sql: ${TABLE}.CST_RAISED_BU_ID;;
}
measure: DIM_RESELLER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_RESELLER_ID;;
}
measure: DIM_SURVEY_TRANSACTION_TYPE_ID {
type:count_distinct
 sql: ${TABLE}.DIM_SURVEY_TRANSACTION_TYPE_ID;;
}
measure: DIM_SURVEY_SYSTEM_ID {
type:count_distinct
 sql: ${TABLE}.DIM_SURVEY_SYSTEM_ID;;
}
measure: DIM_USER_ID {
type:count_distinct
 sql: ${TABLE}.DIM_USER_ID;;
}
}


view: CONTRACT__7857e09e_898d_48db_a8d1_0faa67fdb059 {
sql_table_name:sforce.SFORCE.CONTRACT ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: PRICEBOOK2ID {
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNEREXPIRATIONNOTICE {
 sql: ${TABLE}.OWNEREXPIRATIONNOTICE;;
}
dimension: STARTDATE {
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
}
dimension: BILLINGSTREET {
 sql: ${TABLE}.BILLINGSTREET;;
}
dimension: BILLINGCITY {
 sql: ${TABLE}.BILLINGCITY;;
}
dimension: BILLINGSTATE {
 sql: ${TABLE}.BILLINGSTATE;;
}
dimension: BILLINGPOSTALCODE {
 sql: ${TABLE}.BILLINGPOSTALCODE;;
}
dimension: BILLINGCOUNTRY {
 sql: ${TABLE}.BILLINGCOUNTRY;;
}
dimension: BILLINGLATITUDE {
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
type:count_distinct
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
measure: CONTRACTTERM {
type:count_distinct
 sql: ${TABLE}.CONTRACTTERM;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
}
dimension: STATUS {
 sql: ${TABLE}.STATUS;;
}
dimension: COMPANYSIGNEDID {
 sql: ${TABLE}.COMPANYSIGNEDID;;
}
dimension: COMPANYSIGNEDDATE {
 sql: ${TABLE}.COMPANYSIGNEDDATE;;
}
dimension: CUSTOMERSIGNEDID {
 sql: ${TABLE}.CUSTOMERSIGNEDID;;
}
dimension: CUSTOMERSIGNEDTITLE {
 sql: ${TABLE}.CUSTOMERSIGNEDTITLE;;
}
dimension: CUSTOMERSIGNEDDATE {
 sql: ${TABLE}.CUSTOMERSIGNEDDATE;;
}
dimension: SPECIALTERMS {
 sql: ${TABLE}.SPECIALTERMS;;
}
dimension: ACTIVATEDBYID {
 sql: ${TABLE}.ACTIVATEDBYID;;
}
dimension: ACTIVATEDDATE {
 sql: ${TABLE}.ACTIVATEDDATE;;
}
dimension: STATUSCODE {
 sql: ${TABLE}.STATUSCODE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: CONTRACTNUMBER {
 sql: ${TABLE}.CONTRACTNUMBER;;
}
dimension: LASTAPPROVEDDATE {
 sql: ${TABLE}.LASTAPPROVEDDATE;;
}
dimension: CREATEDDATE {
 sql: ${TABLE}.CREATEDDATE;;
}
dimension: CREATEDBYID {
 sql: ${TABLE}.CREATEDBYID;;
}
dimension: LASTMODIFIEDDATE {
 sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: LASTMODIFIEDBYID {
 sql: ${TABLE}.LASTMODIFIEDBYID;;
}
dimension: SYSTEMMODSTAMP {
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: LASTACTIVITYDATE {
 sql: ${TABLE}.LASTACTIVITYDATE;;
}
dimension: LASTVIEWEDDATE {
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
}