
connection:"presto-qa-1"


explore: ACCOUNT__20e1e378_9b46_40ba_9e7b_80f4109ab440 {

join: OPPORTUNITY__3f9e8263_1d03_477d_a973_6cd357c48f63 {
 relationship: one_to_one
 sql_on: ${ACCOUNT__20e1e378_9b46_40ba_9e7b_80f4109ab440.ID} = ${OPPORTUNITY__3f9e8263_1d03_477d_a973_6cd357c48f63.ACCOUNTID} ;;
}
}


view: ACCOUNT__20e1e378_9b46_40ba_9e7b_80f4109ab440 {
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
measure: SHIPPINGLATITUDE {
type:count_distinct
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
measure: SHIPPINGLONGITUDE {
type:count_distinct
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
measure: ANNUALREVENUE {
type:count_distinct
 sql: ${TABLE}.ANNUALREVENUE;;
}
measure: NUMBEROFEMPLOYEES {
type:count_distinct
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
measure: NUMBEROFLOCATIONS__C {
type:count_distinct
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
}


view: OPPORTUNITY__3f9e8263_1d03_477d_a973_6cd357c48f63 {
sql_table_name:sforce.SFORCE.OPPORTUNITY ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: RECORDTYPEID {
 sql: ${TABLE}.RECORDTYPEID;;
}
dimension: ISPRIVATE {
 sql: ${TABLE}.ISPRIVATE;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: STAGENAME {
 sql: ${TABLE}.STAGENAME;;
}
measure: AMOUNT {
type:count_distinct
 sql: ${TABLE}.AMOUNT;;
}
measure: PROBABILITY {
type:count_distinct
 sql: ${TABLE}.PROBABILITY;;
}
measure: EXPECTEDREVENUE {
type:count_distinct
 sql: ${TABLE}.EXPECTEDREVENUE;;
}
measure: TOTALOPPORTUNITYQUANTITY {
type:count_distinct
 sql: ${TABLE}.TOTALOPPORTUNITYQUANTITY;;
}
dimension: CLOSEDATE {
 sql: ${TABLE}.CLOSEDATE;;
}
dimension: TYPE {
 sql: ${TABLE}.TYPE;;
}
dimension: NEXTSTEP {
 sql: ${TABLE}.NEXTSTEP;;
}
dimension: LEADSOURCE {
 sql: ${TABLE}.LEADSOURCE;;
}
dimension: ISCLOSED {
 sql: ${TABLE}.ISCLOSED;;
}
dimension: ISWON {
 sql: ${TABLE}.ISWON;;
}
dimension: FORECASTCATEGORY {
 sql: ${TABLE}.FORECASTCATEGORY;;
}
dimension: FORECASTCATEGORYNAME {
 sql: ${TABLE}.FORECASTCATEGORYNAME;;
}
dimension: CAMPAIGNID {
 sql: ${TABLE}.CAMPAIGNID;;
}
dimension: HASOPPORTUNITYLINEITEM {
 sql: ${TABLE}.HASOPPORTUNITYLINEITEM;;
}
dimension: PRICEBOOK2ID {
 sql: ${TABLE}.PRICEBOOK2ID;;
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
measure: FISCALQUARTER {
type:count_distinct
 sql: ${TABLE}.FISCALQUARTER;;
}
measure: FISCALYEAR {
type:count_distinct
 sql: ${TABLE}.FISCALYEAR;;
}
dimension: FISCAL {
 sql: ${TABLE}.FISCAL;;
}
dimension: LASTVIEWEDDATE {
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: HASOPENACTIVITY {
 sql: ${TABLE}.HASOPENACTIVITY;;
}
dimension: HASOVERDUETASK {
 sql: ${TABLE}.HASOVERDUETASK;;
}
dimension: DELIVERYINSTALLATIONSTATUS__C {
 sql: ${TABLE}.DELIVERYINSTALLATIONSTATUS__C;;
}
dimension: TRACKINGNUMBER__C {
 sql: ${TABLE}.TRACKINGNUMBER__C;;
}
dimension: ORDERNUMBER__C {
 sql: ${TABLE}.ORDERNUMBER__C;;
}
dimension: CURRENTGENERATORS__C {
 sql: ${TABLE}.CURRENTGENERATORS__C;;
}
dimension: MAINCOMPETITORS__C {
 sql: ${TABLE}.MAINCOMPETITORS__C;;
}
dimension: OPPORTUNITY_SOURCE__C {
 sql: ${TABLE}.OPPORTUNITY_SOURCE__C;;
}
}