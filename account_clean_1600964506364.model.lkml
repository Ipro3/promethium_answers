
connection: "pmdevpresto"


explore: ACCOUNTCLEANINFO__c25293ed_702c_4fb2_83d5_1fe72eef03f7 {

join: ACCOUNT__aa3a1f47_4ff3_4e2b_b0de_cf42d9ccd242 {
 relationship: one_to_one
 sql_on: ${ACCOUNT__aa3a1f47_4ff3_4e2b_b0de_cf42d9ccd242.ID} = ${ACCOUNTCLEANINFO__c25293ed_702c_4fb2_83d5_1fe72eef03f7.ID} ;;
}
}


view: ACCOUNT__aa3a1f47_4ff3_4e2b_b0de_cf42d9ccd242 {
sql_table_name:sforce.SFORCE.ACCOUNT ;;
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


view: ACCOUNTCLEANINFO__c25293ed_702c_4fb2_83d5_1fe72eef03f7 {
sql_table_name:sforce.SFORCE.ACCOUNTCLEANINFO ;;
dimension: ID {
 type: string
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 type: string
 sql: ${TABLE}.ISDELETED;;
}
dimension: NAME {
 type: string
 sql: ${TABLE}.NAME;;
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
dimension: ACCOUNTID {
 type: string
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: LASTMATCHEDDATE {
 type: string
 sql: ${TABLE}.LASTMATCHEDDATE;;
}
dimension: LASTSTATUSCHANGEDDATE {
 type: string
 sql: ${TABLE}.LASTSTATUSCHANGEDDATE;;
}
dimension: LASTSTATUSCHANGEDBYID {
 type: string
 sql: ${TABLE}.LASTSTATUSCHANGEDBYID;;
}
dimension: ISINACTIVE {
 type: string
 sql: ${TABLE}.ISINACTIVE;;
}
dimension: COMPANYNAME {
 type: string
 sql: ${TABLE}.COMPANYNAME;;
}
dimension: PHONE {
 type: string
 sql: ${TABLE}.PHONE;;
}
dimension: STREET {
 type: string
 sql: ${TABLE}.STREET;;
}
dimension: CITY {
 type: string
 sql: ${TABLE}.CITY;;
}
dimension: STATE {
 type: string
 sql: ${TABLE}.STATE;;
}
dimension: POSTALCODE {
 type: string
 sql: ${TABLE}.POSTALCODE;;
}
dimension: COUNTRY {
 type: string
 sql: ${TABLE}.COUNTRY;;
}
dimension: LATITUDE {
 type: string
 sql: ${TABLE}.LATITUDE;;
}
dimension: LONGITUDE {
 type: string
 sql: ${TABLE}.LONGITUDE;;
}
dimension: GEOCODEACCURACY {
 type: string
 sql: ${TABLE}.GEOCODEACCURACY;;
}
dimension: WEBSITE {
 type: string
 sql: ${TABLE}.WEBSITE;;
}
dimension: TICKERSYMBOL {
 type: string
 sql: ${TABLE}.TICKERSYMBOL;;
}
dimension: ANNUALREVENUE {
 type: string
 sql: ${TABLE}.ANNUALREVENUE;;
}
dimension: NUMBEROFEMPLOYEES {
 type: string
 sql: ${TABLE}.NUMBEROFEMPLOYEES;;
}
dimension: INDUSTRY {
 type: string
 sql: ${TABLE}.INDUSTRY;;
}
dimension: OWNERSHIP {
 type: string
 sql: ${TABLE}.OWNERSHIP;;
}
dimension: DUNSNUMBER {
 type: string
 sql: ${TABLE}.DUNSNUMBER;;
}
dimension: SIC {
 type: string
 sql: ${TABLE}.SIC;;
}
dimension: SICDESCRIPTION {
 type: string
 sql: ${TABLE}.SICDESCRIPTION;;
}
dimension: NAICSCODE {
 type: string
 sql: ${TABLE}.NAICSCODE;;
}
dimension: NAICSDESCRIPTION {
 type: string
 sql: ${TABLE}.NAICSDESCRIPTION;;
}
dimension: YEARSTARTED {
 type: string
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: FAX {
 type: string
 sql: ${TABLE}.FAX;;
}
dimension: ACCOUNTSITE {
 type: string
 sql: ${TABLE}.ACCOUNTSITE;;
}
dimension: DESCRIPTION {
 type: string
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: TRADESTYLE {
 type: string
 sql: ${TABLE}.TRADESTYLE;;
}
dimension: DANDBCOMPANYDUNSNUMBER {
 type: string
 sql: ${TABLE}.DANDBCOMPANYDUNSNUMBER;;
}
dimension: DUNSRIGHTMATCHGRADE {
 type: string
 sql: ${TABLE}.DUNSRIGHTMATCHGRADE;;
}
dimension: DUNSRIGHTMATCHCONFIDENCE {
 type: string
 sql: ${TABLE}.DUNSRIGHTMATCHCONFIDENCE;;
}
dimension: COMPANYSTATUSDATADOTCOM {
 type: string
 sql: ${TABLE}.COMPANYSTATUSDATADOTCOM;;
}
dimension: ISREVIEWEDCOMPANYNAME {
 type: string
 sql: ${TABLE}.ISREVIEWEDCOMPANYNAME;;
}
dimension: ISREVIEWEDPHONE {
 type: string
 sql: ${TABLE}.ISREVIEWEDPHONE;;
}
dimension: ISREVIEWEDADDRESS {
 type: string
 sql: ${TABLE}.ISREVIEWEDADDRESS;;
}
dimension: ISREVIEWEDWEBSITE {
 type: string
 sql: ${TABLE}.ISREVIEWEDWEBSITE;;
}
dimension: ISREVIEWEDTICKERSYMBOL {
 type: string
 sql: ${TABLE}.ISREVIEWEDTICKERSYMBOL;;
}
dimension: ISREVIEWEDANNUALREVENUE {
 type: string
 sql: ${TABLE}.ISREVIEWEDANNUALREVENUE;;
}
dimension: ISREVIEWEDNUMBEROFEMPLOYEES {
 type: string
 sql: ${TABLE}.ISREVIEWEDNUMBEROFEMPLOYEES;;
}
dimension: ISREVIEWEDINDUSTRY {
 type: string
 sql: ${TABLE}.ISREVIEWEDINDUSTRY;;
}
dimension: ISREVIEWEDOWNERSHIP {
 type: string
 sql: ${TABLE}.ISREVIEWEDOWNERSHIP;;
}
dimension: ISREVIEWEDDUNSNUMBER {
 type: string
 sql: ${TABLE}.ISREVIEWEDDUNSNUMBER;;
}
dimension: ISREVIEWEDSIC {
 type: string
 sql: ${TABLE}.ISREVIEWEDSIC;;
}
dimension: ISREVIEWEDSICDESCRIPTION {
 type: string
 sql: ${TABLE}.ISREVIEWEDSICDESCRIPTION;;
}
dimension: ISREVIEWEDNAICSCODE {
 type: string
 sql: ${TABLE}.ISREVIEWEDNAICSCODE;;
}
dimension: ISREVIEWEDNAICSDESCRIPTION {
 type: string
 sql: ${TABLE}.ISREVIEWEDNAICSDESCRIPTION;;
}
dimension: ISREVIEWEDYEARSTARTED {
 type: string
 sql: ${TABLE}.ISREVIEWEDYEARSTARTED;;
}
dimension: ISREVIEWEDFAX {
 type: string
 sql: ${TABLE}.ISREVIEWEDFAX;;
}
dimension: ISREVIEWEDACCOUNTSITE {
 type: string
 sql: ${TABLE}.ISREVIEWEDACCOUNTSITE;;
}
dimension: ISREVIEWEDDESCRIPTION {
 type: string
 sql: ${TABLE}.ISREVIEWEDDESCRIPTION;;
}
dimension: ISREVIEWEDTRADESTYLE {
 type: string
 sql: ${TABLE}.ISREVIEWEDTRADESTYLE;;
}
dimension: ISREVIEWEDDANDBCOMPANYDUNSNUMBER {
 type: string
 sql: ${TABLE}.ISREVIEWEDDANDBCOMPANYDUNSNUMBER;;
}
dimension: ISDIFFERENTCOMPANYNAME {
 type: string
 sql: ${TABLE}.ISDIFFERENTCOMPANYNAME;;
}
dimension: ISDIFFERENTPHONE {
 type: string
 sql: ${TABLE}.ISDIFFERENTPHONE;;
}
dimension: ISDIFFERENTSTREET {
 type: string
 sql: ${TABLE}.ISDIFFERENTSTREET;;
}
dimension: ISDIFFERENTCITY {
 type: string
 sql: ${TABLE}.ISDIFFERENTCITY;;
}
dimension: ISDIFFERENTSTATE {
 type: string
 sql: ${TABLE}.ISDIFFERENTSTATE;;
}
dimension: ISDIFFERENTPOSTALCODE {
 type: string
 sql: ${TABLE}.ISDIFFERENTPOSTALCODE;;
}
dimension: ISDIFFERENTCOUNTRY {
 type: string
 sql: ${TABLE}.ISDIFFERENTCOUNTRY;;
}
dimension: ISDIFFERENTWEBSITE {
 type: string
 sql: ${TABLE}.ISDIFFERENTWEBSITE;;
}
dimension: ISDIFFERENTTICKERSYMBOL {
 type: string
 sql: ${TABLE}.ISDIFFERENTTICKERSYMBOL;;
}
dimension: ISDIFFERENTANNUALREVENUE {
 type: string
 sql: ${TABLE}.ISDIFFERENTANNUALREVENUE;;
}
dimension: ISDIFFERENTNUMBEROFEMPLOYEES {
 type: string
 sql: ${TABLE}.ISDIFFERENTNUMBEROFEMPLOYEES;;
}
dimension: ISDIFFERENTINDUSTRY {
 type: string
 sql: ${TABLE}.ISDIFFERENTINDUSTRY;;
}
dimension: ISDIFFERENTOWNERSHIP {
 type: string
 sql: ${TABLE}.ISDIFFERENTOWNERSHIP;;
}
dimension: ISDIFFERENTDUNSNUMBER {
 type: string
 sql: ${TABLE}.ISDIFFERENTDUNSNUMBER;;
}
dimension: ISDIFFERENTSIC {
 type: string
 sql: ${TABLE}.ISDIFFERENTSIC;;
}
dimension: ISDIFFERENTSICDESCRIPTION {
 type: string
 sql: ${TABLE}.ISDIFFERENTSICDESCRIPTION;;
}
dimension: ISDIFFERENTNAICSCODE {
 type: string
 sql: ${TABLE}.ISDIFFERENTNAICSCODE;;
}
dimension: ISDIFFERENTNAICSDESCRIPTION {
 type: string
 sql: ${TABLE}.ISDIFFERENTNAICSDESCRIPTION;;
}
dimension: ISDIFFERENTYEARSTARTED {
 type: string
 sql: ${TABLE}.ISDIFFERENTYEARSTARTED;;
}
dimension: ISDIFFERENTFAX {
 type: string
 sql: ${TABLE}.ISDIFFERENTFAX;;
}
dimension: ISDIFFERENTACCOUNTSITE {
 type: string
 sql: ${TABLE}.ISDIFFERENTACCOUNTSITE;;
}
dimension: ISDIFFERENTDESCRIPTION {
 type: string
 sql: ${TABLE}.ISDIFFERENTDESCRIPTION;;
}
dimension: ISDIFFERENTTRADESTYLE {
 type: string
 sql: ${TABLE}.ISDIFFERENTTRADESTYLE;;
}
dimension: ISDIFFERENTDANDBCOMPANYDUNSNUMBER {
 type: string
 sql: ${TABLE}.ISDIFFERENTDANDBCOMPANYDUNSNUMBER;;
}
dimension: ISDIFFERENTSTATECODE {
 type: string
 sql: ${TABLE}.ISDIFFERENTSTATECODE;;
}
dimension: ISDIFFERENTCOUNTRYCODE {
 type: string
 sql: ${TABLE}.ISDIFFERENTCOUNTRYCODE;;
}
dimension: CLEANEDBYJOB {
 type: string
 sql: ${TABLE}.CLEANEDBYJOB;;
}
dimension: CLEANEDBYUSER {
 type: string
 sql: ${TABLE}.CLEANEDBYUSER;;
}
dimension: ISFLAGGEDWRONGCOMPANYNAME {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGCOMPANYNAME;;
}
dimension: ISFLAGGEDWRONGPHONE {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGPHONE;;
}
dimension: ISFLAGGEDWRONGADDRESS {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGADDRESS;;
}
dimension: ISFLAGGEDWRONGWEBSITE {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGWEBSITE;;
}
dimension: ISFLAGGEDWRONGTICKERSYMBOL {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGTICKERSYMBOL;;
}
dimension: ISFLAGGEDWRONGANNUALREVENUE {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGANNUALREVENUE;;
}
dimension: ISFLAGGEDWRONGNUMBEROFEMPLOYEES {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGNUMBEROFEMPLOYEES;;
}
dimension: ISFLAGGEDWRONGINDUSTRY {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGINDUSTRY;;
}
dimension: ISFLAGGEDWRONGOWNERSHIP {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGOWNERSHIP;;
}
dimension: ISFLAGGEDWRONGDUNSNUMBER {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGDUNSNUMBER;;
}
dimension: ISFLAGGEDWRONGSIC {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGSIC;;
}
dimension: ISFLAGGEDWRONGSICDESCRIPTION {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGSICDESCRIPTION;;
}
dimension: ISFLAGGEDWRONGNAICSCODE {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGNAICSCODE;;
}
dimension: ISFLAGGEDWRONGNAICSDESCRIPTION {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGNAICSDESCRIPTION;;
}
dimension: ISFLAGGEDWRONGYEARSTARTED {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGYEARSTARTED;;
}
dimension: ISFLAGGEDWRONGFAX {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGFAX;;
}
dimension: ISFLAGGEDWRONGACCOUNTSITE {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGACCOUNTSITE;;
}
dimension: ISFLAGGEDWRONGDESCRIPTION {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGDESCRIPTION;;
}
dimension: ISFLAGGEDWRONGTRADESTYLE {
 type: string
 sql: ${TABLE}.ISFLAGGEDWRONGTRADESTYLE;;
}
dimension: DATADOTCOMID {
 type: string
 sql: ${TABLE}.DATADOTCOMID;;
}
}