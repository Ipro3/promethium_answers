
connection: "pmdevpresto"


explore: ACCOUNT__1e8fa45a_907a_4c6f_a13a_9bf8095e6768 {

join: OPPORTUNITY__c60703a7_178f_4e15_9c83_a0538c90cacc {
 relationship: one_to_one;;
}
}


view: ACCOUNT__1e8fa45a_907a_4c6f_a13a_9bf8095e6768 {
sql_table_name:sforce_direct.SFORCE.ACCOUNT ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: MASTERRECORDID {
 type: string
 sql: ${TABLE}.MASTERRECORDID;;
}
dimension: NAME {
 type: string
 sql: ${TABLE}.NAME;;
}
dimension: TYPE {
 type: string
 sql: ${TABLE}.TYPE;;
}
dimension: PARENTID {
 type: string
 sql: ${TABLE}.PARENTID;;
}
dimension: BILLINGSTREET {
 type: string
 sql: ${TABLE}.BILLINGSTREET;;
}
dimension: BILLINGCITY {
 type: string
 sql: ${TABLE}.BILLINGCITY;;
}
dimension: BILLINGSTATE {
 type: string
 sql: ${TABLE}.BILLINGSTATE;;
}
dimension: BILLINGPOSTALCODE {
 type: string
 sql: ${TABLE}.BILLINGPOSTALCODE;;
}
dimension: BILLINGCOUNTRY {
 type: string
 sql: ${TABLE}.BILLINGCOUNTRY;;
}
dimension: BILLINGLATITUDE {
 type: string
 sql: ${TABLE}.BILLINGLATITUDE;;
}
dimension: BILLINGLONGITUDE {
 type: string
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 type: string
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
dimension: SHIPPINGSTREET {
 type: string
 sql: ${TABLE}.SHIPPINGSTREET;;
}
dimension: SHIPPINGCITY {
 type: string
 sql: ${TABLE}.SHIPPINGCITY;;
}
dimension: SHIPPINGSTATE {
 type: string
 sql: ${TABLE}.SHIPPINGSTATE;;
}
dimension: SHIPPINGPOSTALCODE {
 type: string
 sql: ${TABLE}.SHIPPINGPOSTALCODE;;
}
dimension: SHIPPINGCOUNTRY {
 type: string
 sql: ${TABLE}.SHIPPINGCOUNTRY;;
}
dimension: SHIPPINGLATITUDE {
 type: string
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
dimension: SHIPPINGLONGITUDE {
 type: string
 sql: ${TABLE}.SHIPPINGLONGITUDE;;
}
dimension: SHIPPINGGEOCODEACCURACY {
 type: string
 sql: ${TABLE}.SHIPPINGGEOCODEACCURACY;;
}
dimension: PHONE {
 type: string
 sql: ${TABLE}.PHONE;;
}
dimension: FAX {
 type: string
 sql: ${TABLE}.FAX;;
}
dimension: ACCOUNTNUMBER {
 type: string
 sql: ${TABLE}.ACCOUNTNUMBER;;
}
dimension: WEBSITE {
 type: string
 sql: ${TABLE}.WEBSITE;;
}
dimension: PHOTOURL {
 type: string
 sql: ${TABLE}.PHOTOURL;;
}
dimension: SIC {
 type: string
 sql: ${TABLE}.SIC;;
}
dimension: INDUSTRY {
 type: string
 sql: ${TABLE}.INDUSTRY;;
}
dimension: ANNUALREVENUE {
 type: string
 sql: ${TABLE}.ANNUALREVENUE;;
}
dimension: NUMBEROFEMPLOYEES {
 type: string
 sql: ${TABLE}.NUMBEROFEMPLOYEES;;
}
dimension: OWNERSHIP {
 type: string
 sql: ${TABLE}.OWNERSHIP;;
}
dimension: TICKERSYMBOL {
 type: string
 sql: ${TABLE}.TICKERSYMBOL;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: RATING {
 type: string
 sql: ${TABLE}.RATING;;
}
dimension: SITE {
 type: string
 sql: ${TABLE}.SITE;;
}
dimension: OWNERID {
 type: string
 sql: ${TABLE}.OWNERID;;
}
dimension: CREATEDDATE {
 type: string
 sql: ${TABLE}.CREATEDDATE;;
}
dimension: CREATEDBYID {
 type: string
 sql: ${TABLE}.CREATEDBYID;;
}
dimension: LASTMODIFIEDDATE {
 type: string
 sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: LASTMODIFIEDBYID {
 type: string
 sql: ${TABLE}.LASTMODIFIEDBYID;;
}
dimension: SYSTEMMODSTAMP {
 type: string
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: LASTACTIVITYDATE {
 type: string
 sql: ${TABLE}.LASTACTIVITYDATE;;
}
dimension: LASTVIEWEDDATE {
 type: string
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 type: string
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: JIGSAW {
 type: string
 sql: ${TABLE}.JIGSAW;;
}
dimension: JIGSAWCOMPANYID {
 type: string
 sql: ${TABLE}.JIGSAWCOMPANYID;;
}
dimension: CLEANSTATUS {
 type: string
 sql: ${TABLE}.CLEANSTATUS;;
}
dimension: ACCOUNTSOURCE {
 type: string
 sql: ${TABLE}.ACCOUNTSOURCE;;
}
dimension: DUNSNUMBER {
 type: string
 sql: ${TABLE}.DUNSNUMBER;;
}
dimension: TRADESTYLE {
 type: string
 sql: ${TABLE}.TRADESTYLE;;
}
dimension: NAICSCODE {
 type: string
 sql: ${TABLE}.NAICSCODE;;
}
dimension: NAICSDESC {
 type: string
 sql: ${TABLE}.NAICSDESC;;
}
dimension: YEARSTARTED {
 type: string
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: SICDESC {
 type: string
 sql: ${TABLE}.SICDESC;;
}
dimension: DANDBCOMPANYID {
 type: string
 sql: ${TABLE}.DANDBCOMPANYID;;
}
dimension: CUSTOMERPRIORITY__C {
 type: string
 sql: ${TABLE}.CUSTOMERPRIORITY__C;;
}
dimension: SLA__C {
 type: string
 sql: ${TABLE}.SLA__C;;
}
dimension: ACTIVE__C {
 type: string
 sql: ${TABLE}.ACTIVE__C;;
}
dimension: NUMBEROFLOCATIONS__C {
 type: string
 sql: ${TABLE}.NUMBEROFLOCATIONS__C;;
}
dimension: UPSELLOPPORTUNITY__C {
 type: string
 sql: ${TABLE}.UPSELLOPPORTUNITY__C;;
}
dimension: SLASERIALNUMBER__C {
 type: string
 sql: ${TABLE}.SLASERIALNUMBER__C;;
}
dimension: SLAEXPIRATIONDATE__C {
 type: string
 sql: ${TABLE}.SLAEXPIRATIONDATE__C;;
}
dimension: SEGMENT__C {
 type: string
 sql: ${TABLE}.SEGMENT__C;;
}
}


view: OPPORTUNITY__c60703a7_178f_4e15_9c83_a0538c90cacc {
sql_table_name:sforce_direct.SFORCE.OPPORTUNITY ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: RECORDTYPEID {
 type: string
 sql: ${TABLE}.RECORDTYPEID;;
}
dimension: ISPRIVATE {
 type: string
 sql: ${TABLE}.ISPRIVATE;;
}
dimension: NAME {
 type: string
 sql: ${TABLE}.NAME;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: STAGENAME {
 type: string
 sql: ${TABLE}.STAGENAME;;
}
dimension: AMOUNT {
 type: string
 sql: ${TABLE}.AMOUNT;;
}
dimension: PROBABILITY {
 type: string
 sql: ${TABLE}.PROBABILITY;;
}
dimension: EXPECTEDREVENUE {
 type: string
 sql: ${TABLE}.EXPECTEDREVENUE;;
}
dimension: TOTALOPPORTUNITYQUANTITY {
 type: string
 sql: ${TABLE}.TOTALOPPORTUNITYQUANTITY;;
}
dimension: CLOSEDATE {
 type: string
 sql: ${TABLE}.CLOSEDATE;;
}
dimension: TYPE {
 type: string
 sql: ${TABLE}.TYPE;;
}
dimension: NEXTSTEP {
 type: string
 sql: ${TABLE}.NEXTSTEP;;
}
dimension: LEADSOURCE {
 type: string
 sql: ${TABLE}.LEADSOURCE;;
}
dimension: ISCLOSED {
 type: string
 sql: ${TABLE}.ISCLOSED;;
}
dimension: ISWON {
 type: string
 sql: ${TABLE}.ISWON;;
}
dimension: FORECASTCATEGORY {
 type: string
 sql: ${TABLE}.FORECASTCATEGORY;;
}
dimension: FORECASTCATEGORYNAME {
 type: string
 sql: ${TABLE}.FORECASTCATEGORYNAME;;
}
dimension: CAMPAIGNID {
 type: string
 sql: ${TABLE}.CAMPAIGNID;;
}
dimension: HASOPPORTUNITYLINEITEM {
 type: string
 sql: ${TABLE}.HASOPPORTUNITYLINEITEM;;
}
dimension: PRICEBOOK2ID {
 type: string
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNERID {
 type: string
 sql: ${TABLE}.OWNERID;;
}
dimension: CREATEDDATE {
 type: string
 sql: ${TABLE}.CREATEDDATE;;
}
dimension: CREATEDBYID {
 type: string
 sql: ${TABLE}.CREATEDBYID;;
}
dimension: LASTMODIFIEDDATE {
 type: string
 sql: ${TABLE}.LASTMODIFIEDDATE;;
}
dimension: LASTMODIFIEDBYID {
 type: string
 sql: ${TABLE}.LASTMODIFIEDBYID;;
}
dimension: SYSTEMMODSTAMP {
 type: string
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: LASTACTIVITYDATE {
 type: string
 sql: ${TABLE}.LASTACTIVITYDATE;;
}
dimension: FISCALQUARTER {
 type: string
 sql: ${TABLE}.FISCALQUARTER;;
}
dimension: FISCALYEAR {
 type: string
 sql: ${TABLE}.FISCALYEAR;;
}
dimension: FISCAL {
 type: string
 sql: ${TABLE}.FISCAL;;
}
dimension: LASTVIEWEDDATE {
 type: string
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 type: string
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: HASOPENACTIVITY {
 type: string
 sql: ${TABLE}.HASOPENACTIVITY;;
}
dimension: HASOVERDUETASK {
 type: string
 sql: ${TABLE}.HASOVERDUETASK;;
}
dimension: DELIVERYINSTALLATIONSTATUS__C {
 type: string
 sql: ${TABLE}.DELIVERYINSTALLATIONSTATUS__C;;
}
dimension: TRACKINGNUMBER__C {
 type: string
 sql: ${TABLE}.TRACKINGNUMBER__C;;
}
dimension: ORDERNUMBER__C {
 type: string
 sql: ${TABLE}.ORDERNUMBER__C;;
}
dimension: CURRENTGENERATORS__C {
 type: string
 sql: ${TABLE}.CURRENTGENERATORS__C;;
}
dimension: MAINCOMPETITORS__C {
 type: string
 sql: ${TABLE}.MAINCOMPETITORS__C;;
}
dimension: OPPORTUNITY_SOURCE__C {
 type: string
 sql: ${TABLE}.OPPORTUNITY_SOURCE__C;;
}
}