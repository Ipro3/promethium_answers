
connection:"pmdevpresto"


explore: FACT_SUBSCRIPTION_ACTIVITY__5f96d1b1_8d43_4bce_b341_f16ea1bcbe42 {

join: MASTER_PLAN_TABLE_WDATES__2057d509_0e5a_4c51_987c_3fb0a11802d5 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${MASTER_PLAN_TABLE_WDATES__2057d509_0e5a_4c51_987c_3fb0a11802d5.PLAN_ID} = ${FACT_SUBSCRIPTION_ACTIVITY__5f96d1b1_8d43_4bce_b341_f16ea1bcbe42.PLAN_ID} ;;
}
join: ACCOUNT__3fb9de21_e0dd_4049_9994_c3b31ef39ef6 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${ACCOUNT__3fb9de21_e0dd_4049_9994_c3b31ef39ef6.ID} = ${FACT_SUBSCRIPTION_ACTIVITY__5f96d1b1_8d43_4bce_b341_f16ea1bcbe42.SBSCRN_ID} ;;
}
join: CAMPAIGN__eb272914_efaf_4b16_a353_9d5cdc016065 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${CAMPAIGN__eb272914_efaf_4b16_a353_9d5cdc016065.ID} = ${FACT_SUBSCRIPTION_ACTIVITY__5f96d1b1_8d43_4bce_b341_f16ea1bcbe42.SBSCRN_ID} ;;
}
join: DIM_DEVICE__b0e39e29_966a_4313_8402_b1d6fcdc9e29 {
 type: left_outer
 relationship: many_to_one
 sql_on: ${FACT_SUBSCRIPTION_ACTIVITY__5f96d1b1_8d43_4bce_b341_f16ea1bcbe42.DVC_KEY} = ${DIM_DEVICE__b0e39e29_966a_4313_8402_b1d6fcdc9e29.DEVICE_RECORD_KEY} ;;
}
}


view: MASTER_PLAN_TABLE_WDATES__2057d509_0e5a_4c51_987c_3fb0a11802d5 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.MASTER_PLAN_TABLE_WDATES ;;
dimension: PLAN_ID {
 sql: ${TABLE}.PLAN_ID;;
}
dimension: PLAN_NAME {
 sql: ${TABLE}.PLAN_NAME;;
}
dimension: MER {
 sql: ${TABLE}.MER;;
}
dimension: DISC {
 sql: ${TABLE}.DISC;;
}
dimension: PACKAGE {
 sql: ${TABLE}.PACKAGE;;
}
dimension: LEN {
 sql: ${TABLE}.LEN;;
}
dimension: ROLLUP1 {
 sql: ${TABLE}.ROLLUP1;;
}
dimension: ASP {
 sql: ${TABLE}.ASP;;
}
dimension: STARTDATE {
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
}
measure: MER_count {
type:count
 drill_fields: [detail*]
}
measure: MER_sum {
type:sum
sql: ${MER} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [PLAN_NAME, MER, DISC, PACKAGE, LEN, ROLLUP1, ASP]
}
}


view: CAMPAIGN__eb272914_efaf_4b16_a353_9d5cdc016065 {
sql_table_name:sforce.SFORCE.CAMPAIGN ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
}
dimension: PARENTID {
 sql: ${TABLE}.PARENTID;;
}
dimension: TYPE {
 sql: ${TABLE}.TYPE;;
}
dimension: STATUS {
 sql: ${TABLE}.STATUS;;
}
dimension: STARTDATE {
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
}
dimension: EXPECTEDREVENUE {
 sql: ${TABLE}.EXPECTEDREVENUE;;
}
dimension: BUDGETEDCOST {
 sql: ${TABLE}.BUDGETEDCOST;;
}
dimension: ACTUALCOST {
 sql: ${TABLE}.ACTUALCOST;;
}
dimension: EXPECTEDRESPONSE {
 sql: ${TABLE}.EXPECTEDRESPONSE;;
}
dimension: NUMBERSENT {
 sql: ${TABLE}.NUMBERSENT;;
}
dimension: ISACTIVE {
 sql: ${TABLE}.ISACTIVE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: NUMBEROFLEADS {
 sql: ${TABLE}.NUMBEROFLEADS;;
}
dimension: NUMBEROFCONVERTEDLEADS {
 sql: ${TABLE}.NUMBEROFCONVERTEDLEADS;;
}
dimension: NUMBEROFCONTACTS {
 sql: ${TABLE}.NUMBEROFCONTACTS;;
}
dimension: NUMBEROFRESPONSES {
 sql: ${TABLE}.NUMBEROFRESPONSES;;
}
dimension: NUMBEROFOPPORTUNITIES {
 sql: ${TABLE}.NUMBEROFOPPORTUNITIES;;
}
dimension: NUMBEROFWONOPPORTUNITIES {
 sql: ${TABLE}.NUMBEROFWONOPPORTUNITIES;;
}
dimension: AMOUNTALLOPPORTUNITIES {
 sql: ${TABLE}.AMOUNTALLOPPORTUNITIES;;
}
dimension: AMOUNTWONOPPORTUNITIES {
 sql: ${TABLE}.AMOUNTWONOPPORTUNITIES;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
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
dimension: CAMPAIGNMEMBERRECORDTYPEID {
 sql: ${TABLE}.CAMPAIGNMEMBERRECORDTYPEID;;
}
measure: EXPECTEDREVENUE_count {
type:count
 drill_fields: [detail*]
}
measure: EXPECTEDREVENUE_sum {
type:sum
sql: ${EXPECTEDREVENUE} ;;
 drill_fields: [detail*]
}
measure: BUDGETEDCOST_count {
type:count
 drill_fields: [detail*]
}
measure: BUDGETEDCOST_sum {
type:sum
sql: ${BUDGETEDCOST} ;;
 drill_fields: [detail*]
}
measure: ACTUALCOST_count {
type:count
 drill_fields: [detail*]
}
measure: ACTUALCOST_sum {
type:sum
sql: ${ACTUALCOST} ;;
 drill_fields: [detail*]
}
measure: EXPECTEDRESPONSE_count {
type:count
 drill_fields: [detail*]
}
measure: EXPECTEDRESPONSE_sum {
type:sum
sql: ${EXPECTEDRESPONSE} ;;
 drill_fields: [detail*]
}
measure: NUMBERSENT_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBERSENT_sum {
type:sum
sql: ${NUMBERSENT} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFLEADS_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFLEADS_sum {
type:sum
sql: ${NUMBEROFLEADS} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFCONVERTEDLEADS_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFCONVERTEDLEADS_sum {
type:sum
sql: ${NUMBEROFCONVERTEDLEADS} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFCONTACTS_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFCONTACTS_sum {
type:sum
sql: ${NUMBEROFCONTACTS} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFRESPONSES_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFRESPONSES_sum {
type:sum
sql: ${NUMBEROFRESPONSES} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFOPPORTUNITIES_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFOPPORTUNITIES_sum {
type:sum
sql: ${NUMBEROFOPPORTUNITIES} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFWONOPPORTUNITIES_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFWONOPPORTUNITIES_sum {
type:sum
sql: ${NUMBEROFWONOPPORTUNITIES} ;;
 drill_fields: [detail*]
}
measure: AMOUNTALLOPPORTUNITIES_count {
type:count
 drill_fields: [detail*]
}
measure: AMOUNTALLOPPORTUNITIES_sum {
type:sum
sql: ${AMOUNTALLOPPORTUNITIES} ;;
 drill_fields: [detail*]
}
measure: AMOUNTWONOPPORTUNITIES_count {
type:count
 drill_fields: [detail*]
}
measure: AMOUNTWONOPPORTUNITIES_sum {
type:sum
sql: ${AMOUNTWONOPPORTUNITIES} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, NAME, PARENTID, TYPE, STATUS, EXPECTEDREVENUE, BUDGETEDCOST, ACTUALCOST, EXPECTEDRESPONSE, NUMBERSENT, DESCRIPTION, NUMBEROFLEADS, NUMBEROFCONVERTEDLEADS, NUMBEROFCONTACTS, NUMBEROFRESPONSES, NUMBEROFOPPORTUNITIES, NUMBEROFWONOPPORTUNITIES, AMOUNTALLOPPORTUNITIES, AMOUNTWONOPPORTUNITIES, OWNERID, CREATEDBYID, LASTMODIFIEDBYID, CAMPAIGNMEMBERRECORDTYPEID]
}
}


view: ACCOUNT__3fb9de21_e0dd_4049_9994_c3b31ef39ef6 {
sql_table_name:sforce.SFORCE.ACCOUNT ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: MASTERRECORDID {
 sql: ${TABLE}.MASTERRECORDID;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
}
dimension: TYPE {
 sql: ${TABLE}.TYPE;;
}
dimension: PARENTID {
 sql: ${TABLE}.PARENTID;;
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
dimension: BILLINGLONGITUDE {
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
dimension: SHIPPINGSTREET {
 sql: ${TABLE}.SHIPPINGSTREET;;
}
dimension: SHIPPINGCITY {
 sql: ${TABLE}.SHIPPINGCITY;;
}
dimension: SHIPPINGSTATE {
 sql: ${TABLE}.SHIPPINGSTATE;;
}
dimension: SHIPPINGPOSTALCODE {
 sql: ${TABLE}.SHIPPINGPOSTALCODE;;
}
dimension: SHIPPINGCOUNTRY {
 sql: ${TABLE}.SHIPPINGCOUNTRY;;
}
dimension: SHIPPINGLATITUDE {
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
dimension: SHIPPINGLONGITUDE {
 sql: ${TABLE}.SHIPPINGLONGITUDE;;
}
dimension: SHIPPINGGEOCODEACCURACY {
 sql: ${TABLE}.SHIPPINGGEOCODEACCURACY;;
}
dimension: PHONE {
 sql: ${TABLE}.PHONE;;
}
dimension: FAX {
 sql: ${TABLE}.FAX;;
}
dimension: ACCOUNTNUMBER {
 sql: ${TABLE}.ACCOUNTNUMBER;;
}
dimension: WEBSITE {
 sql: ${TABLE}.WEBSITE;;
}
dimension: PHOTOURL {
 sql: ${TABLE}.PHOTOURL;;
}
dimension: SIC {
 sql: ${TABLE}.SIC;;
}
dimension: INDUSTRY {
 sql: ${TABLE}.INDUSTRY;;
}
dimension: ANNUALREVENUE {
 sql: ${TABLE}.ANNUALREVENUE;;
}
dimension: NUMBEROFEMPLOYEES {
 sql: ${TABLE}.NUMBEROFEMPLOYEES;;
}
dimension: OWNERSHIP {
 sql: ${TABLE}.OWNERSHIP;;
}
dimension: TICKERSYMBOL {
 sql: ${TABLE}.TICKERSYMBOL;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: RATING {
 sql: ${TABLE}.RATING;;
}
dimension: SITE {
 sql: ${TABLE}.SITE;;
}
dimension: OWNERID {
 sql: ${TABLE}.OWNERID;;
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
dimension: JIGSAW {
 sql: ${TABLE}.JIGSAW;;
}
dimension: JIGSAWCOMPANYID {
 sql: ${TABLE}.JIGSAWCOMPANYID;;
}
dimension: CLEANSTATUS {
 sql: ${TABLE}.CLEANSTATUS;;
}
dimension: ACCOUNTSOURCE {
 sql: ${TABLE}.ACCOUNTSOURCE;;
}
dimension: DUNSNUMBER {
 sql: ${TABLE}.DUNSNUMBER;;
}
dimension: TRADESTYLE {
 sql: ${TABLE}.TRADESTYLE;;
}
dimension: NAICSCODE {
 sql: ${TABLE}.NAICSCODE;;
}
dimension: NAICSDESC {
 sql: ${TABLE}.NAICSDESC;;
}
dimension: YEARSTARTED {
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: SICDESC {
 sql: ${TABLE}.SICDESC;;
}
dimension: DANDBCOMPANYID {
 sql: ${TABLE}.DANDBCOMPANYID;;
}
dimension: CUSTOMERPRIORITY__C {
 sql: ${TABLE}.CUSTOMERPRIORITY__C;;
}
dimension: SLA__C {
 sql: ${TABLE}.SLA__C;;
}
dimension: ACTIVE__C {
 sql: ${TABLE}.ACTIVE__C;;
}
dimension: NUMBEROFLOCATIONS__C {
 sql: ${TABLE}.NUMBEROFLOCATIONS__C;;
}
dimension: UPSELLOPPORTUNITY__C {
 sql: ${TABLE}.UPSELLOPPORTUNITY__C;;
}
dimension: SLASERIALNUMBER__C {
 sql: ${TABLE}.SLASERIALNUMBER__C;;
}
dimension: SLAEXPIRATIONDATE__C {
 sql: ${TABLE}.SLAEXPIRATIONDATE__C;;
}
dimension: SEGMENT__C {
 sql: ${TABLE}.SEGMENT__C;;
}
measure: BILLINGLATITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: BILLINGLATITUDE_sum {
type:sum
sql: ${BILLINGLATITUDE} ;;
 drill_fields: [detail*]
}
measure: BILLINGLONGITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: BILLINGLONGITUDE_sum {
type:sum
sql: ${BILLINGLONGITUDE} ;;
 drill_fields: [detail*]
}
measure: SHIPPINGLATITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: SHIPPINGLATITUDE_sum {
type:sum
sql: ${SHIPPINGLATITUDE} ;;
 drill_fields: [detail*]
}
measure: SHIPPINGLONGITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: SHIPPINGLONGITUDE_sum {
type:sum
sql: ${SHIPPINGLONGITUDE} ;;
 drill_fields: [detail*]
}
measure: ANNUALREVENUE_count {
type:count
 drill_fields: [detail*]
}
measure: ANNUALREVENUE_sum {
type:sum
sql: ${ANNUALREVENUE} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFEMPLOYEES_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFEMPLOYEES_sum {
type:sum
sql: ${NUMBEROFEMPLOYEES} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFLOCATIONS__C_count {
type:count
 drill_fields: [detail*]
}
measure: NUMBEROFLOCATIONS__C_sum {
type:sum
sql: ${NUMBEROFLOCATIONS__C} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, MASTERRECORDID, NAME, TYPE, PARENTID, BILLINGSTREET, BILLINGCITY, BILLINGSTATE, BILLINGPOSTALCODE, BILLINGCOUNTRY, BILLINGLATITUDE, BILLINGLONGITUDE, BILLINGGEOCODEACCURACY, SHIPPINGSTREET, SHIPPINGCITY, SHIPPINGSTATE, SHIPPINGPOSTALCODE, SHIPPINGCOUNTRY, SHIPPINGLATITUDE, SHIPPINGLONGITUDE, SHIPPINGGEOCODEACCURACY, PHONE, FAX, ACCOUNTNUMBER, WEBSITE, PHOTOURL, SIC, INDUSTRY, ANNUALREVENUE, NUMBEROFEMPLOYEES, OWNERSHIP, TICKERSYMBOL, DESCRIPTION, RATING, SITE, OWNERID, CREATEDBYID, LASTMODIFIEDBYID, JIGSAW, JIGSAWCOMPANYID, CLEANSTATUS, ACCOUNTSOURCE, DUNSNUMBER, TRADESTYLE, NAICSCODE, NAICSDESC, YEARSTARTED, SICDESC, DANDBCOMPANYID, CUSTOMERPRIORITY__C, SLA__C, ACTIVE__C, NUMBEROFLOCATIONS__C, UPSELLOPPORTUNITY__C, SLASERIALNUMBER__C, SEGMENT__C]
}
}


view: DIM_DEVICE__b0e39e29_966a_4313_8402_b1d6fcdc9e29 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.DIM_DEVICE ;;
dimension: DEVICE_RECORD_KEY {
 sql: ${TABLE}.DEVICE_RECORD_KEY;;
}
dimension: DEVICE_ID {
 sql: ${TABLE}.DEVICE_ID;;
}
dimension: CHANGE_DATE_START {
 sql: ${TABLE}.CHANGE_DATE_START;;
}
dimension: CHANGE_DATE_END {
 sql: ${TABLE}.CHANGE_DATE_END;;
}
dimension: DELIVERY_METHOD {
 sql: ${TABLE}.DELIVERY_METHOD;;
}
dimension: BRAND {
 sql: ${TABLE}.BRAND;;
}
dimension: PSN {
 sql: ${TABLE}.PSN;;
}
dimension: PARTNER_ID {
 sql: ${TABLE}.PARTNER_ID;;
}
dimension: SECONDARY_PARTNER_ID {
 sql: ${TABLE}.SECONDARY_PARTNER_ID;;
}
dimension: VIN {
 sql: ${TABLE}.VIN;;
}
dimension: VEHICLE_ID {
 sql: ${TABLE}.VEHICLE_ID;;
}
dimension: EQUIPMENT_KEY {
 sql: ${TABLE}.EQUIPMENT_KEY;;
}
dimension: EQUIPMENT_ID {
 sql: ${TABLE}.EQUIPMENT_ID;;
}
dimension: CAPABILITY_ID {
 sql: ${TABLE}.CAPABILITY_ID;;
}
dimension: PRIMARY_DEALER_ID {
 sql: ${TABLE}.PRIMARY_DEALER_ID;;
}
dimension: SECONDARY_DEALER_ID {
 sql: ${TABLE}.SECONDARY_DEALER_ID;;
}
dimension: X65_FLAG {
 sql: ${TABLE}.X65_FLAG;;
}
dimension: VIN_ROOT {
 sql: ${TABLE}.VIN_ROOT;;
}
dimension: CURRENT_RECORD_FLAG {
 sql: ${TABLE}.CURRENT_RECORD_FLAG;;
}
dimension: DELETED_RECORD_FLAG {
 sql: ${TABLE}.DELETED_RECORD_FLAG;;
}
dimension: ENTERTAINMENT_SYSTEM_CODE {
 sql: ${TABLE}.ENTERTAINMENT_SYSTEM_CODE;;
}
dimension: VEHICLE_CAPABILITY_ID {
 sql: ${TABLE}.VEHICLE_CAPABILITY_ID;;
}
dimension: SBSCRN_ACTVTY_KEY {
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
measure: PARTNER_ID_count {
type:count
 drill_fields: [detail*]
}
measure: PARTNER_ID_sum {
type:sum
sql: ${PARTNER_ID} ;;
 drill_fields: [detail*]
}
measure: SECONDARY_PARTNER_ID_count {
type:count
 drill_fields: [detail*]
}
measure: SECONDARY_PARTNER_ID_sum {
type:sum
sql: ${SECONDARY_PARTNER_ID} ;;
 drill_fields: [detail*]
}
measure: VEHICLE_ID_count {
type:count
 drill_fields: [detail*]
}
measure: VEHICLE_ID_sum {
type:sum
sql: ${VEHICLE_ID} ;;
 drill_fields: [detail*]
}
measure: EQUIPMENT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: EQUIPMENT_KEY_sum {
type:sum
sql: ${EQUIPMENT_KEY} ;;
 drill_fields: [detail*]
}
measure: EQUIPMENT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: EQUIPMENT_ID_sum {
type:sum
sql: ${EQUIPMENT_ID} ;;
 drill_fields: [detail*]
}
measure: CAPABILITY_ID_count {
type:count
 drill_fields: [detail*]
}
measure: CAPABILITY_ID_sum {
type:sum
sql: ${CAPABILITY_ID} ;;
 drill_fields: [detail*]
}
measure: VEHICLE_CAPABILITY_ID_count {
type:count
 drill_fields: [detail*]
}
measure: VEHICLE_CAPABILITY_ID_sum {
type:sum
sql: ${VEHICLE_CAPABILITY_ID} ;;
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [DEVICE_ID, CHANGE_DATE_START, CHANGE_DATE_END, DELIVERY_METHOD, BRAND, PSN, PARTNER_ID, SECONDARY_PARTNER_ID, VIN, VEHICLE_ID, EQUIPMENT_KEY, EQUIPMENT_ID, CAPABILITY_ID, PRIMARY_DEALER_ID, SECONDARY_DEALER_ID, X65_FLAG, VIN_ROOT, CURRENT_RECORD_FLAG, DELETED_RECORD_FLAG, ENTERTAINMENT_SYSTEM_CODE, VEHICLE_CAPABILITY_ID, SBSCRN_ACTVTY_KEY]
}
}


view: FACT_SUBSCRIPTION_ACTIVITY__5f96d1b1_8d43_4bce_b341_f16ea1bcbe42 {
sql_table_name:pm61oracle_media.RDSORACLEFORPRESTO.FACT_SUBSCRIPTION_ACTIVITY ;;
dimension: SBSCRN_ACTVTY_KEY {
 sql: ${TABLE}.SBSCRN_ACTVTY_KEY;;
}
dimension: SBSCRN_ID {
 sql: ${TABLE}.SBSCRN_ID;;
}
dimension: AGN_KEY {
 sql: ${TABLE}.AGN_KEY;;
}
dimension: USED_ACTVTY_TYPE_ID {
 sql: ${TABLE}.USED_ACTVTY_TYPE_ID;;
}
dimension: ACTVTY_DT {
 sql: ${TABLE}.ACTVTY_DT;;
}
dimension: ACTVTY_TS {
 sql: ${TABLE}.ACTVTY_TS;;
}
dimension: HHLD_ID {
 sql: ${TABLE}.HHLD_ID;;
}
dimension: PRTY_KEY {
 sql: ${TABLE}.PRTY_KEY;;
}
dimension: PRTY_ID {
 sql: ${TABLE}.PRTY_ID;;
}
dimension: PARNT_ACCT_KEY {
 sql: ${TABLE}.PARNT_ACCT_KEY;;
}
dimension: PARNT_ACCT_ID {
 sql: ${TABLE}.PARNT_ACCT_ID;;
}
dimension: PARNT_ACCT_NUM {
 sql: ${TABLE}.PARNT_ACCT_NUM;;
}
dimension: CHILD_ACCT_KEY {
 sql: ${TABLE}.CHILD_ACCT_KEY;;
}
dimension: CHILD_ACCT_ID {
 sql: ${TABLE}.CHILD_ACCT_ID;;
}
dimension: CHILD_ACCT_NUM {
 sql: ${TABLE}.CHILD_ACCT_NUM;;
}
dimension: VEH_KEY {
 sql: ${TABLE}.VEH_KEY;;
}
dimension: DVC_KEY {
 sql: ${TABLE}.DVC_KEY;;
}
dimension: DVC_ID {
 sql: ${TABLE}.DVC_ID;;
}
dimension: EQMNT_KEY {
 sql: ${TABLE}.EQMNT_KEY;;
}
dimension: EQMNT_ID {
 sql: ${TABLE}.EQMNT_ID;;
}
dimension: PLAN_KEY {
 sql: ${TABLE}.PLAN_KEY;;
}
dimension: PLAN_ID {
 sql: ${TABLE}.PLAN_ID;;
}
dimension: OFR_ID {
 sql: ${TABLE}.OFR_ID;;
}
dimension: FROM_PLAN_KEY {
 sql: ${TABLE}.FROM_PLAN_KEY;;
}
dimension: FROM_PLAN_ID {
 sql: ${TABLE}.FROM_PLAN_ID;;
}
dimension: FROM_OFR_ID {
 sql: ${TABLE}.FROM_OFR_ID;;
}
dimension: PROD_KEY {
 sql: ${TABLE}.PROD_KEY;;
}
dimension: PROD_ID {
 sql: ${TABLE}.PROD_ID;;
}
dimension: FROM_PROD_KEY {
 sql: ${TABLE}.FROM_PROD_KEY;;
}
dimension: FROM_PROD_ID {
 sql: ${TABLE}.FROM_PROD_ID;;
}
dimension: PKG_ID {
 sql: ${TABLE}.PKG_ID;;
}
dimension: FROM_PKG_ID {
 sql: ${TABLE}.FROM_PKG_ID;;
}
dimension: FEAT_ID {
 sql: ${TABLE}.FEAT_ID;;
}
dimension: AGN_KEY2 {
 sql: ${TABLE}.AGN_KEY2;;
}
dimension: CSR_ID {
 sql: ${TABLE}.CSR_ID;;
}
dimension: PTNR_ID {
 sql: ${TABLE}.PTNR_ID;;
}
dimension: LNKD_INET_FL {
 sql: ${TABLE}.LNKD_INET_FL;;
}
dimension: MRD_TYPE_CD {
 sql: ${TABLE}.MRD_TYPE_CD;;
}
dimension: SBSCR_LIFCYC_KEY {
 sql: ${TABLE}.SBSCR_LIFCYC_KEY;;
}
dimension: CONV_REP_OWN_SEGMT_KEY {
 sql: ${TABLE}.CONV_REP_OWN_SEGMT_KEY;;
}
dimension: OWNR_TYPE2_KEY {
 sql: ${TABLE}.OWNR_TYPE2_KEY;;
}
dimension: DEACTIVATION_REASON_CODE {
 sql: ${TABLE}.DEACTIVATION_REASON_CODE;;
}
dimension: TRIAL_ID {
 sql: ${TABLE}.TRIAL_ID;;
}
dimension: SRVC_ID {
 sql: ${TABLE}.SRVC_ID;;
}
dimension: RENW_ID {
 sql: ${TABLE}.RENW_ID;;
}
dimension: FROM_RENW_ID {
 sql: ${TABLE}.FROM_RENW_ID;;
}
dimension: COLL_SCNRO_ID {
 sql: ${TABLE}.COLL_SCNRO_ID;;
}
dimension: SRVC_LVL_PMT_KEY {
 sql: ${TABLE}.SRVC_LVL_PMT_KEY;;
}
dimension: NONPAY_SRVC_KEY {
 sql: ${TABLE}.NONPAY_SRVC_KEY;;
}
dimension: BILLING_METHOD {
 sql: ${TABLE}.BILLING_METHOD;;
}
dimension: FROM_BILLING_METHOD {
 sql: ${TABLE}.FROM_BILLING_METHOD;;
}
dimension: SLFPAY_TURNOVER_RSN {
 sql: ${TABLE}.SLFPAY_TURNOVER_RSN;;
}
dimension: SLFPAY_TURNOVER_DT {
 sql: ${TABLE}.SLFPAY_TURNOVER_DT;;
}
dimension: FUTURE_DEACTVN_DT {
 sql: ${TABLE}.FUTURE_DEACTVN_DT;;
}
dimension: SCHD_SEASONAL_SUSP_REACTVN_DT {
 sql: ${TABLE}.SCHD_SEASONAL_SUSP_REACTVN_DT;;
}
dimension: CALL_REASON {
 sql: ${TABLE}.CALL_REASON;;
}
dimension: CALL_DISPOSITION {
 sql: ${TABLE}.CALL_DISPOSITION;;
}
dimension: INSE_USER_ID {
 sql: ${TABLE}.INSE_USER_ID;;
}
dimension: INSE_TS {
 sql: ${TABLE}.INSE_TS;;
}
dimension: UPDT_USER_ID {
 sql: ${TABLE}.UPDT_USER_ID;;
}
dimension: UPDT_TS {
 sql: ${TABLE}.UPDT_TS;;
}
dimension: SAVE_ACTIVITY {
 sql: ${TABLE}.SAVE_ACTIVITY;;
}
dimension: DEACT_ACTIVITY_BY_SAVE_AGENT {
 sql: ${TABLE}.DEACT_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: CONV_ACTIVITY_BY_SAVE_AGENT {
 sql: ${TABLE}.CONV_ACTIVITY_BY_SAVE_AGENT;;
}
dimension: SAVE_OPPORTUNITY_ACTIVITY {
 sql: ${TABLE}.SAVE_OPPORTUNITY_ACTIVITY;;
}
measure: SBSCRN_ACTVTY_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: SBSCRN_ACTVTY_KEY_sum {
type:sum
sql: ${SBSCRN_ACTVTY_KEY} ;;
 drill_fields: [detail*]
}
measure: AGN_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: AGN_KEY_sum {
type:sum
sql: ${AGN_KEY} ;;
 drill_fields: [detail*]
}
measure: PARNT_ACCT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PARNT_ACCT_KEY_sum {
type:sum
sql: ${PARNT_ACCT_KEY} ;;
 drill_fields: [detail*]
}
measure: PARNT_ACCT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: PARNT_ACCT_ID_sum {
type:sum
sql: ${PARNT_ACCT_ID} ;;
 drill_fields: [detail*]
}
measure: CHILD_ACCT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: CHILD_ACCT_KEY_sum {
type:sum
sql: ${CHILD_ACCT_KEY} ;;
 drill_fields: [detail*]
}
measure: VEH_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: VEH_KEY_sum {
type:sum
sql: ${VEH_KEY} ;;
 drill_fields: [detail*]
}
measure: DVC_ID_count {
type:count
 drill_fields: [detail*]
}
measure: DVC_ID_sum {
type:sum
sql: ${DVC_ID} ;;
 drill_fields: [detail*]
}
measure: EQMNT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: EQMNT_KEY_sum {
type:sum
sql: ${EQMNT_KEY} ;;
 drill_fields: [detail*]
}
measure: EQMNT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: EQMNT_ID_sum {
type:sum
sql: ${EQMNT_ID} ;;
 drill_fields: [detail*]
}
measure: PLAN_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PLAN_KEY_sum {
type:sum
sql: ${PLAN_KEY} ;;
 drill_fields: [detail*]
}
measure: OFR_ID_count {
type:count
 drill_fields: [detail*]
}
measure: OFR_ID_sum {
type:sum
sql: ${OFR_ID} ;;
 drill_fields: [detail*]
}
measure: PROD_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: PROD_KEY_sum {
type:sum
sql: ${PROD_KEY} ;;
 drill_fields: [detail*]
}
measure: FEAT_ID_count {
type:count
 drill_fields: [detail*]
}
measure: FEAT_ID_sum {
type:sum
sql: ${FEAT_ID} ;;
 drill_fields: [detail*]
}
measure: AGN_KEY2_count {
type:count
 drill_fields: [detail*]
}
measure: AGN_KEY2_sum {
type:sum
sql: ${AGN_KEY2} ;;
 drill_fields: [detail*]
}
measure: PTNR_ID_count {
type:count
 drill_fields: [detail*]
}
measure: PTNR_ID_sum {
type:sum
sql: ${PTNR_ID} ;;
 drill_fields: [detail*]
}
measure: SBSCR_LIFCYC_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: SBSCR_LIFCYC_KEY_sum {
type:sum
sql: ${SBSCR_LIFCYC_KEY} ;;
 drill_fields: [detail*]
}
measure: CONV_REP_OWN_SEGMT_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: CONV_REP_OWN_SEGMT_KEY_sum {
type:sum
sql: ${CONV_REP_OWN_SEGMT_KEY} ;;
 drill_fields: [detail*]
}
measure: OWNR_TYPE2_KEY_count {
type:count
 drill_fields: [detail*]
}
measure: OWNR_TYPE2_KEY_sum {
type:sum
sql: ${OWNR_TYPE2_KEY} ;;
 drill_fields: [detail*]
}
measure: TRIAL_ID_count {
type:count
 drill_fields: [detail*]
}
measure: TRIAL_ID_sum {
type:sum
sql: ${TRIAL_ID} ;;
 drill_fields: [detail*]
}
measure: RENW_ID_count {
type:count
 drill_fields: [detail*]
}
measure: RENW_ID_sum {
type:sum
sql: ${RENW_ID} ;;
 drill_fields: [detail*]
}
measure: CALL_REASON_count {
type:count
 drill_fields: [detail*]
}
measure: CALL_REASON_sum {
type:sum
sql: ${CALL_REASON} ;;
 drill_fields: [detail*]
}
measure: SAVE_ACTIVITY_count {
type:count
 drill_fields: [detail*]
}
measure: SAVE_ACTIVITY_sum {
type:sum
sql: ${SAVE_ACTIVITY} ;;
 drill_fields: [detail*]
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT_count {
type:count
 drill_fields: [detail*]
}
measure: DEACT_ACTIVITY_BY_SAVE_AGENT_sum {
type:sum
sql: ${DEACT_ACTIVITY_BY_SAVE_AGENT} ;;
 drill_fields: [detail*]
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT_count {
type:count
 drill_fields: [detail*]
}
measure: CONV_ACTIVITY_BY_SAVE_AGENT_sum {
type:sum
sql: ${CONV_ACTIVITY_BY_SAVE_AGENT} ;;
 drill_fields: [detail*]
}
measure: SAVE_OPPORTUNITY_ACTIVITY_count {
type:count
 drill_fields: [detail*]
}
measure: SAVE_OPPORTUNITY_ACTIVITY_sum {
type:sum
sql: ${SAVE_OPPORTUNITY_ACTIVITY} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [SBSCRN_ACTVTY_KEY, SBSCRN_ID, AGN_KEY, USED_ACTVTY_TYPE_ID, ACTVTY_TS, HHLD_ID, PRTY_KEY, PRTY_ID, PARNT_ACCT_KEY, PARNT_ACCT_ID, PARNT_ACCT_NUM, CHILD_ACCT_KEY, CHILD_ACCT_ID, CHILD_ACCT_NUM, VEH_KEY, DVC_ID, EQMNT_KEY, EQMNT_ID, PLAN_KEY, OFR_ID, FROM_PLAN_KEY, FROM_PLAN_ID, FROM_OFR_ID, PROD_KEY, PROD_ID, FROM_PROD_KEY, FROM_PROD_ID, PKG_ID, FROM_PKG_ID, FEAT_ID, AGN_KEY2, CSR_ID, PTNR_ID, LNKD_INET_FL, MRD_TYPE_CD, SBSCR_LIFCYC_KEY, CONV_REP_OWN_SEGMT_KEY, OWNR_TYPE2_KEY, DEACTIVATION_REASON_CODE, TRIAL_ID, SRVC_ID, RENW_ID, FROM_RENW_ID, COLL_SCNRO_ID, SRVC_LVL_PMT_KEY, NONPAY_SRVC_KEY, BILLING_METHOD, FROM_BILLING_METHOD, SLFPAY_TURNOVER_RSN, SLFPAY_TURNOVER_DT, FUTURE_DEACTVN_DT, SCHD_SEASONAL_SUSP_REACTVN_DT, CALL_REASON, CALL_DISPOSITION, INSE_USER_ID, INSE_TS, UPDT_USER_ID, UPDT_TS, SAVE_ACTIVITY, DEACT_ACTIVITY_BY_SAVE_AGENT, CONV_ACTIVITY_BY_SAVE_AGENT, SAVE_OPPORTUNITY_ACTIVITY]
}
}