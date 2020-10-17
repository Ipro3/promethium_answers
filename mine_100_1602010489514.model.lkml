
connection: "pmdevpresto"


explore: CONTRACT__ba7350be_b5a3_4ef8_83fe_1680bf75fe3c {

join: ORDER__6e585879_e166_4bfe_b3e3_5d140736239f {
 relationship: one_to_one
 sql_on: ${CONTRACT__ba7350be_b5a3_4ef8_83fe_1680bf75fe3c.ACCOUNTID} > ${ORDER__6e585879_e166_4bfe_b3e3_5d140736239f.ACCOUNTID} ;;
}
}


view: ORDER__6e585879_e166_4bfe_b3e3_5d140736239f {
sql_table_name:sforce.SFORCE.ORDER ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: OWNERID {
 type: string
 sql: ${TABLE}.OWNERID;;
}
dimension: CONTRACTID {
 type: string
 sql: ${TABLE}.CONTRACTID;;
}
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: PRICEBOOK2ID {
 type: string
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: ORIGINALORDERID {
 type: string
 sql: ${TABLE}.ORIGINALORDERID;;
}
dimension: EFFECTIVEDATE {
 type: string
 sql: ${TABLE}.EFFECTIVEDATE;;
}
dimension: ENDDATE {
 type: string
 sql: ${TABLE}.ENDDATE;;
}
dimension: ISREDUCTIONORDER {
 type: string
 sql: ${TABLE}.ISREDUCTIONORDER;;
}
dimension: STATUS {
 type: string
 sql: ${TABLE}.STATUS;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: CUSTOMERAUTHORIZEDBYID {
 type: string
 sql: ${TABLE}.CUSTOMERAUTHORIZEDBYID;;
}
dimension: CUSTOMERAUTHORIZEDDATE {
 type: string
 sql: ${TABLE}.CUSTOMERAUTHORIZEDDATE;;
}
dimension: COMPANYAUTHORIZEDBYID {
 type: string
 sql: ${TABLE}.COMPANYAUTHORIZEDBYID;;
}
dimension: COMPANYAUTHORIZEDDATE {
 type: string
 sql: ${TABLE}.COMPANYAUTHORIZEDDATE;;
}
dimension: TYPE {
 type: string
 sql: ${TABLE}.TYPE;;
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
measure: BILLINGLATITUDE {
 type: number
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
 type: number
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
measure: SHIPPINGLATITUDE {
 type: number
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
measure: SHIPPINGLONGITUDE {
 type: number
 sql: ${TABLE}.SHIPPINGLONGITUDE;;
}
dimension: SHIPPINGGEOCODEACCURACY {
 type: string
 sql: ${TABLE}.SHIPPINGGEOCODEACCURACY;;
}
dimension: NAME {
 type: string
 sql: ${TABLE}.NAME;;
}
dimension: PODATE {
 type: string
 sql: ${TABLE}.PODATE;;
}
dimension: PONUMBER {
 type: string
 sql: ${TABLE}.PONUMBER;;
}
dimension: ORDERREFERENCENUMBER {
 type: string
 sql: ${TABLE}.ORDERREFERENCENUMBER;;
}
dimension: BILLTOCONTACTID {
 type: string
 sql: ${TABLE}.BILLTOCONTACTID;;
}
dimension: SHIPTOCONTACTID {
 type: string
 sql: ${TABLE}.SHIPTOCONTACTID;;
}
dimension: ACTIVATEDDATE {
 type: string
 sql: ${TABLE}.ACTIVATEDDATE;;
}
dimension: ACTIVATEDBYID {
 type: string
 sql: ${TABLE}.ACTIVATEDBYID;;
}
dimension: STATUSCODE {
 type: string
 sql: ${TABLE}.STATUSCODE;;
}
dimension: ORDERNUMBER {
 type: string
 sql: ${TABLE}.ORDERNUMBER;;
}
measure: TOTALAMOUNT {
 type: number
 sql: ${TABLE}.TOTALAMOUNT;;
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
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: SYSTEMMODSTAMP {
 type: string
 sql: ${TABLE}.SYSTEMMODSTAMP;;
}
dimension: LASTVIEWEDDATE {
 type: string
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 type: string
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
}


view: ACCOUNT__5ef5613c_cb6a_4c5e_9b7e_2d12c3dbe3f0 {
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
measure: BILLINGLATITUDE {
 type: number
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
 type: number
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
measure: SHIPPINGLATITUDE {
 type: number
 sql: ${TABLE}.SHIPPINGLATITUDE;;
}
measure: SHIPPINGLONGITUDE {
 type: number
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
measure: ANNUALREVENUE {
 type: number
 sql: ${TABLE}.ANNUALREVENUE;;
}
measure: NUMBEROFEMPLOYEES {
 type: number
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
measure: NUMBEROFLOCATIONS__C {
 type: number
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


view: CONTRACT__ba7350be_b5a3_4ef8_83fe_1680bf75fe3c {
sql_table_name:sforce.SFORCE.CONTRACT ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: PRICEBOOK2ID {
 type: string
 sql: ${TABLE}.PRICEBOOK2ID;;
}
dimension: OWNEREXPIRATIONNOTICE {
 type: string
 sql: ${TABLE}.OWNEREXPIRATIONNOTICE;;
}
dimension: STARTDATE {
 type: string
 sql: ${TABLE}.STARTDATE;;
}
dimension: ENDDATE {
 type: string
 sql: ${TABLE}.ENDDATE;;
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
measure: BILLINGLATITUDE {
 type: number
 sql: ${TABLE}.BILLINGLATITUDE;;
}
measure: BILLINGLONGITUDE {
 type: number
 sql: ${TABLE}.BILLINGLONGITUDE;;
}
dimension: BILLINGGEOCODEACCURACY {
 type: string
 sql: ${TABLE}.BILLINGGEOCODEACCURACY;;
}
measure: CONTRACTTERM {
 type: number
 sql: ${TABLE}.CONTRACTTERM;;
}
dimension: OWNERID {
 type: string
 sql: ${TABLE}.OWNERID;;
}
dimension: STATUS {
 type: string
 sql: ${TABLE}.STATUS;;
}
dimension: COMPANYSIGNEDID {
 type: string
 sql: ${TABLE}.COMPANYSIGNEDID;;
}
dimension: COMPANYSIGNEDDATE {
 type: string
 sql: ${TABLE}.COMPANYSIGNEDDATE;;
}
dimension: CUSTOMERSIGNEDID {
 type: string
 sql: ${TABLE}.CUSTOMERSIGNEDID;;
}
dimension: CUSTOMERSIGNEDTITLE {
 type: string
 sql: ${TABLE}.CUSTOMERSIGNEDTITLE;;
}
dimension: CUSTOMERSIGNEDDATE {
 type: string
 sql: ${TABLE}.CUSTOMERSIGNEDDATE;;
}
dimension: SPECIALTERMS {
 type: string
 sql: ${TABLE}.SPECIALTERMS;;
}
dimension: ACTIVATEDBYID {
 type: string
 sql: ${TABLE}.ACTIVATEDBYID;;
}
dimension: ACTIVATEDDATE {
 type: string
 sql: ${TABLE}.ACTIVATEDDATE;;
}
dimension: STATUSCODE {
 type: string
 sql: ${TABLE}.STATUSCODE;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: CONTRACTNUMBER {
 type: string
 sql: ${TABLE}.CONTRACTNUMBER;;
}
dimension: LASTAPPROVEDDATE {
 type: string
 sql: ${TABLE}.LASTAPPROVEDDATE;;
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
}