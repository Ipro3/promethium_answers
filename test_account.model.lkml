
connection:"pmdevpresto"


explore: ACCOUNT__b44de9b1_2486_4d0d_aaa1_df183dede257 {

join: ACCOUNT__c398d678_32a9_4e20_a39b_fef58881f181 {
 type: full_outer
 relationship: many_to_one
 sql_on: ${ACCOUNT__b44de9b1_2486_4d0d_aaa1_df183dede257.ID} = ${ACCOUNT__c398d678_32a9_4e20_a39b_fef58881f181.ACCOUNT_ID} ;;
}
}


view: ACCOUNT__c398d678_32a9_4e20_a39b_fef58881f181 {
sql_table_name:pm61_snowflake.SCHEMA_INFO.ACCOUNT ;;
dimension: ACCOUNT_ID {
  sql: ${TABLE}.ACCOUNT_ID;;
}
dimension: ACCOUNT_NAME {
  sql: ${TABLE}.ACCOUNT_NAME;;
}
dimension: DATE_OPENED {
  sql: ${TABLE}.DATE_OPENED;;
}
dimension: DATE_CLOSED {
  sql: ${TABLE}.DATE_CLOSED;;
}
dimension: CAUTION_TEXT {
  sql: ${TABLE}.CAUTION_TEXT;;
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [ACCOUNT_ID, ACCOUNT_NAME, DATE_OPENED, DATE_CLOSED, CAUTION_TEXT]
}
}


view: ACCOUNT__b44de9b1_2486_4d0d_aaa1_df183dede257 {
sql_table_name:sforce.SFORCE.ACCOUNT ;;
dimension: ID {
  primary_key: yes
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
measure: BILLINGLATITUDE_sum {
type:sum
sql: ${BILLINGLATITUDE} ;;
 drill_fields: [detail*]
}
measure: BILLINGLONGITUDE_sum {
type:sum
sql: ${BILLINGLONGITUDE} ;;
 drill_fields: [detail*]
}
measure: SHIPPINGLATITUDE_sum {
type:sum
sql: ${SHIPPINGLATITUDE} ;;
 drill_fields: [detail*]
}
measure: SHIPPINGLONGITUDE_sum {
type:sum
sql: ${SHIPPINGLONGITUDE} ;;
 drill_fields: [detail*]
}
measure: ANNUALREVENUE_sum {
type:sum
sql: ${ANNUALREVENUE} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFEMPLOYEES_sum {
type:sum
sql: ${NUMBEROFEMPLOYEES} ;;
 drill_fields: [detail*]
}
measure: NUMBEROFLOCATIONS__C_sum {
type:sum
sql: ${NUMBEROFLOCATIONS__C} ;;
 drill_fields: [detail*]
}
measure: count {
type:count
 drill_fields: [detail*]
}
set: detail {
fields: [ID, ISDELETED, MASTERRECORDID, NAME, TYPE, PARENTID, BILLINGSTREET, BILLINGCITY, BILLINGSTATE, BILLINGPOSTALCODE, BILLINGCOUNTRY, BILLINGLATITUDE, BILLINGLONGITUDE, BILLINGGEOCODEACCURACY, SHIPPINGSTREET, SHIPPINGCITY, SHIPPINGSTATE, SHIPPINGPOSTALCODE, SHIPPINGCOUNTRY, SHIPPINGLATITUDE, SHIPPINGLONGITUDE, SHIPPINGGEOCODEACCURACY, PHONE, FAX, ACCOUNTNUMBER, WEBSITE, PHOTOURL, SIC, INDUSTRY, ANNUALREVENUE, NUMBEROFEMPLOYEES, OWNERSHIP, TICKERSYMBOL, DESCRIPTION, RATING, SITE, OWNERID, CREATEDDATE, CREATEDBYID, LASTMODIFIEDDATE, LASTMODIFIEDBYID, SYSTEMMODSTAMP, LASTACTIVITYDATE, LASTVIEWEDDATE, LASTREFERENCEDDATE, JIGSAW, JIGSAWCOMPANYID, CLEANSTATUS, ACCOUNTSOURCE, DUNSNUMBER, TRADESTYLE, NAICSCODE, NAICSDESC, YEARSTARTED, SICDESC, DANDBCOMPANYID, CUSTOMERPRIORITY__C, SLA__C, ACTIVE__C, NUMBEROFLOCATIONS__C, UPSELLOPPORTUNITY__C, SLASERIALNUMBER__C, SLAEXPIRATIONDATE__C, SEGMENT__C]
}
}