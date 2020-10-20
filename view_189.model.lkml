
connection:"pmdevpresto"


explore: CONTRACT__378438a5_bf55_4d36_864b_a1b8d2f27ed4 {

join: FACT_SATISFACTION_SURVEY__2655dddd_ad76_4650_86c7_7d9820c91f8d {
 relationship: one_to_one
 sql_on: ${CONTRACT__378438a5_bf55_4d36_864b_a1b8d2f27ed4.BILLINGLATITUDE} = ${FACT_SATISFACTION_SURVEY__2655dddd_ad76_4650_86c7_7d9820c91f8d.CUSTOMER_NUMBER} 
 and ${FACT_SATISFACTION_SURVEY__2655dddd_ad76_4650_86c7_7d9820c91f8d.SURVEY_DATE} = ${CONTRACT__378438a5_bf55_4d36_864b_a1b8d2f27ed4.STARTDATE} ;;
}
join: FACT_SATISFACTION_SURVEY2__c89eba8a_b543_41e3_801a_6301de2f95b8 {
 relationship: one_to_one
 sql_on: ${CONTRACT__378438a5_bf55_4d36_864b_a1b8d2f27ed4.STARTDATE} = ${FACT_SATISFACTION_SURVEY2__c89eba8a_b543_41e3_801a_6301de2f95b8.SURVEY_DATE} ;;
}
join: FACT_SATISFACTION_SURVEY__3f510873_e9c8_49a9_ab4f_2d5bc39fd751 {
 relationship: one_to_one
 sql_on: ${FACT_SATISFACTION_SURVEY__2655dddd_ad76_4650_86c7_7d9820c91f8d.COLUMN0} = ${FACT_SATISFACTION_SURVEY__3f510873_e9c8_49a9_ab4f_2d5bc39fd751.ROW_INDEX} ;;
}
}


view: CONTRACT__378438a5_bf55_4d36_864b_a1b8d2f27ed4 {
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
measure: BILLINGLATITUDE {
type:count_distinct
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


view: FACT_SATISFACTION_SURVEY__3f510873_e9c8_49a9_ab4f_2d5bc39fd751 {
sql_table_name:oracle.RDSORACLEFORPRESTO.FACT_SATISFACTION_SURVEY ;;
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


view: FACT_SATISFACTION_SURVEY__2655dddd_ad76_4650_86c7_7d9820c91f8d {
sql_table_name:snowflake.SCHEMA_INFO.FACT_SATISFACTION_SURVEY ;;
measure: COLUMN0 {
type:count_distinct
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
measure: CUSTOMER_NUMBER {
type:count_distinct
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


view: FACT_SATISFACTION_SURVEY2__c89eba8a_b543_41e3_801a_6301de2f95b8 {
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