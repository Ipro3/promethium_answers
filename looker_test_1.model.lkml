
connection:"pmdevpresto"


explore: ACCOUNT__84f966c1_319a_47ab_9c53_75cf816c06f5 {

join: OPPORTUNITY__3ab641cd_48e8_46d1_87c0_91c7ea7e88ef {
 type: left_outer
 relationship: many_to_one
 sql_on: ${ACCOUNT__84f966c1_319a_47ab_9c53_75cf816c06f5.ID} = ${OPPORTUNITY__3ab641cd_48e8_46d1_87c0_91c7ea7e88ef.ACCOUNTID} ;;
}
}


view: ACCOUNT__84f966c1_319a_47ab_9c53_75cf816c06f5 {
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


view: OPPORTUNITY__3ab641cd_48e8_46d1_87c0_91c7ea7e88ef {
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
dimension: AMOUNT {
 sql: ${TABLE}.AMOUNT;;
}
dimension: PROBABILITY {
 sql: ${TABLE}.PROBABILITY;;
}
dimension: EXPECTEDREVENUE {
 sql: ${TABLE}.EXPECTEDREVENUE;;
}
dimension: TOTALOPPORTUNITYQUANTITY {
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
dimension: FISCALQUARTER {
 sql: ${TABLE}.FISCALQUARTER;;
}
dimension: FISCALYEAR {
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
measure: AMOUNT_count {
type:count
 drill_fields: [detail*]
}
measure: AMOUNT_sum {
type:sum
sql: ${AMOUNT} ;;
 drill_fields: [detail*]
}
measure: PROBABILITY_count {
type:count
 drill_fields: [detail*]
}
measure: PROBABILITY_sum {
type:sum
sql: ${PROBABILITY} ;;
 drill_fields: [detail*]
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
measure: TOTALOPPORTUNITYQUANTITY_count {
type:count
 drill_fields: [detail*]
}
measure: TOTALOPPORTUNITYQUANTITY_sum {
type:sum
sql: ${TOTALOPPORTUNITYQUANTITY} ;;
 drill_fields: [detail*]
}
measure: FISCALQUARTER_count {
type:count
 drill_fields: [detail*]
}
measure: FISCALQUARTER_sum {
type:sum
sql: ${FISCALQUARTER} ;;
 drill_fields: [detail*]
}
measure: FISCALYEAR_count {
type:count
 drill_fields: [detail*]
}
measure: FISCALYEAR_sum {
type:sum
sql: ${FISCALYEAR} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, ACCOUNTID, RECORDTYPEID, NAME, DESCRIPTION, STAGENAME, AMOUNT, PROBABILITY, EXPECTEDREVENUE, TOTALOPPORTUNITYQUANTITY, TYPE, NEXTSTEP, LEADSOURCE, FORECASTCATEGORY, FORECASTCATEGORYNAME, CAMPAIGNID, PRICEBOOK2ID, OWNERID, CREATEDBYID, LASTMODIFIEDBYID, FISCALQUARTER, FISCALYEAR, FISCAL, DELIVERYINSTALLATIONSTATUS__C, TRACKINGNUMBER__C, ORDERNUMBER__C, CURRENTGENERATORS__C, MAINCOMPETITORS__C, OPPORTUNITY_SOURCE__C]
}
}