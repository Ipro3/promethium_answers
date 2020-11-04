
connection:"presto-qa-1"


explore: ACCOUNT__93bb4a66_8a3a_4fea_a8c8_dac3ef27d880 {

join: ACCOUNTCLEANINFO__69c48214_0705_4d3d_a840_8e100b5cff8d {
 type: inner
 relationship: many_to_one
 sql_on: ${ACCOUNT__93bb4a66_8a3a_4fea_a8c8_dac3ef27d880.ID} = ${ACCOUNTCLEANINFO__69c48214_0705_4d3d_a840_8e100b5cff8d.ACCOUNTID} ;;
}
}


view: ACCOUNTCLEANINFO__69c48214_0705_4d3d_a840_8e100b5cff8d {
sql_table_name:sforce.SFORCE.ACCOUNTCLEANINFO ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
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
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: LASTMATCHEDDATE {
 sql: ${TABLE}.LASTMATCHEDDATE;;
}
dimension: LASTSTATUSCHANGEDDATE {
 sql: ${TABLE}.LASTSTATUSCHANGEDDATE;;
}
dimension: LASTSTATUSCHANGEDBYID {
 sql: ${TABLE}.LASTSTATUSCHANGEDBYID;;
}
dimension: ISINACTIVE {
 sql: ${TABLE}.ISINACTIVE;;
}
dimension: COMPANYNAME {
 sql: ${TABLE}.COMPANYNAME;;
}
dimension: PHONE {
 sql: ${TABLE}.PHONE;;
}
dimension: STREET {
 sql: ${TABLE}.STREET;;
}
dimension: CITY {
 sql: ${TABLE}.CITY;;
}
dimension: STATE {
 sql: ${TABLE}.STATE;;
}
dimension: POSTALCODE {
 sql: ${TABLE}.POSTALCODE;;
}
dimension: COUNTRY {
 sql: ${TABLE}.COUNTRY;;
}
dimension: LATITUDE {
 sql: ${TABLE}.LATITUDE;;
}
dimension: LONGITUDE {
 sql: ${TABLE}.LONGITUDE;;
}
dimension: GEOCODEACCURACY {
 sql: ${TABLE}.GEOCODEACCURACY;;
}
dimension: WEBSITE {
 sql: ${TABLE}.WEBSITE;;
}
dimension: TICKERSYMBOL {
 sql: ${TABLE}.TICKERSYMBOL;;
}
dimension: ANNUALREVENUE {
 sql: ${TABLE}.ANNUALREVENUE;;
}
dimension: NUMBEROFEMPLOYEES {
 sql: ${TABLE}.NUMBEROFEMPLOYEES;;
}
dimension: INDUSTRY {
 sql: ${TABLE}.INDUSTRY;;
}
dimension: OWNERSHIP {
 sql: ${TABLE}.OWNERSHIP;;
}
dimension: DUNSNUMBER {
 sql: ${TABLE}.DUNSNUMBER;;
}
dimension: SIC {
 sql: ${TABLE}.SIC;;
}
dimension: SICDESCRIPTION {
 sql: ${TABLE}.SICDESCRIPTION;;
}
dimension: NAICSCODE {
 sql: ${TABLE}.NAICSCODE;;
}
dimension: NAICSDESCRIPTION {
 sql: ${TABLE}.NAICSDESCRIPTION;;
}
dimension: YEARSTARTED {
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: FAX {
 sql: ${TABLE}.FAX;;
}
dimension: ACCOUNTSITE {
 sql: ${TABLE}.ACCOUNTSITE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: TRADESTYLE {
 sql: ${TABLE}.TRADESTYLE;;
}
dimension: DANDBCOMPANYDUNSNUMBER {
 sql: ${TABLE}.DANDBCOMPANYDUNSNUMBER;;
}
dimension: DUNSRIGHTMATCHGRADE {
 sql: ${TABLE}.DUNSRIGHTMATCHGRADE;;
}
dimension: DUNSRIGHTMATCHCONFIDENCE {
 sql: ${TABLE}.DUNSRIGHTMATCHCONFIDENCE;;
}
dimension: COMPANYSTATUSDATADOTCOM {
 sql: ${TABLE}.COMPANYSTATUSDATADOTCOM;;
}
dimension: ISREVIEWEDCOMPANYNAME {
 sql: ${TABLE}.ISREVIEWEDCOMPANYNAME;;
}
dimension: ISREVIEWEDPHONE {
 sql: ${TABLE}.ISREVIEWEDPHONE;;
}
dimension: ISREVIEWEDADDRESS {
 sql: ${TABLE}.ISREVIEWEDADDRESS;;
}
dimension: ISREVIEWEDWEBSITE {
 sql: ${TABLE}.ISREVIEWEDWEBSITE;;
}
dimension: ISREVIEWEDTICKERSYMBOL {
 sql: ${TABLE}.ISREVIEWEDTICKERSYMBOL;;
}
dimension: ISREVIEWEDANNUALREVENUE {
 sql: ${TABLE}.ISREVIEWEDANNUALREVENUE;;
}
dimension: ISREVIEWEDNUMBEROFEMPLOYEES {
 sql: ${TABLE}.ISREVIEWEDNUMBEROFEMPLOYEES;;
}
dimension: ISREVIEWEDINDUSTRY {
 sql: ${TABLE}.ISREVIEWEDINDUSTRY;;
}
dimension: ISREVIEWEDOWNERSHIP {
 sql: ${TABLE}.ISREVIEWEDOWNERSHIP;;
}
dimension: ISREVIEWEDDUNSNUMBER {
 sql: ${TABLE}.ISREVIEWEDDUNSNUMBER;;
}
dimension: ISREVIEWEDSIC {
 sql: ${TABLE}.ISREVIEWEDSIC;;
}
dimension: ISREVIEWEDSICDESCRIPTION {
 sql: ${TABLE}.ISREVIEWEDSICDESCRIPTION;;
}
dimension: ISREVIEWEDNAICSCODE {
 sql: ${TABLE}.ISREVIEWEDNAICSCODE;;
}
dimension: ISREVIEWEDNAICSDESCRIPTION {
 sql: ${TABLE}.ISREVIEWEDNAICSDESCRIPTION;;
}
dimension: ISREVIEWEDYEARSTARTED {
 sql: ${TABLE}.ISREVIEWEDYEARSTARTED;;
}
dimension: ISREVIEWEDFAX {
 sql: ${TABLE}.ISREVIEWEDFAX;;
}
dimension: ISREVIEWEDACCOUNTSITE {
 sql: ${TABLE}.ISREVIEWEDACCOUNTSITE;;
}
dimension: ISREVIEWEDDESCRIPTION {
 sql: ${TABLE}.ISREVIEWEDDESCRIPTION;;
}
dimension: ISREVIEWEDTRADESTYLE {
 sql: ${TABLE}.ISREVIEWEDTRADESTYLE;;
}
dimension: ISREVIEWEDDANDBCOMPANYDUNSNUMBER {
 sql: ${TABLE}.ISREVIEWEDDANDBCOMPANYDUNSNUMBER;;
}
dimension: ISDIFFERENTCOMPANYNAME {
 sql: ${TABLE}.ISDIFFERENTCOMPANYNAME;;
}
dimension: ISDIFFERENTPHONE {
 sql: ${TABLE}.ISDIFFERENTPHONE;;
}
dimension: ISDIFFERENTSTREET {
 sql: ${TABLE}.ISDIFFERENTSTREET;;
}
dimension: ISDIFFERENTCITY {
 sql: ${TABLE}.ISDIFFERENTCITY;;
}
dimension: ISDIFFERENTSTATE {
 sql: ${TABLE}.ISDIFFERENTSTATE;;
}
dimension: ISDIFFERENTPOSTALCODE {
 sql: ${TABLE}.ISDIFFERENTPOSTALCODE;;
}
dimension: ISDIFFERENTCOUNTRY {
 sql: ${TABLE}.ISDIFFERENTCOUNTRY;;
}
dimension: ISDIFFERENTWEBSITE {
 sql: ${TABLE}.ISDIFFERENTWEBSITE;;
}
dimension: ISDIFFERENTTICKERSYMBOL {
 sql: ${TABLE}.ISDIFFERENTTICKERSYMBOL;;
}
dimension: ISDIFFERENTANNUALREVENUE {
 sql: ${TABLE}.ISDIFFERENTANNUALREVENUE;;
}
dimension: ISDIFFERENTNUMBEROFEMPLOYEES {
 sql: ${TABLE}.ISDIFFERENTNUMBEROFEMPLOYEES;;
}
dimension: ISDIFFERENTINDUSTRY {
 sql: ${TABLE}.ISDIFFERENTINDUSTRY;;
}
dimension: ISDIFFERENTOWNERSHIP {
 sql: ${TABLE}.ISDIFFERENTOWNERSHIP;;
}
dimension: ISDIFFERENTDUNSNUMBER {
 sql: ${TABLE}.ISDIFFERENTDUNSNUMBER;;
}
dimension: ISDIFFERENTSIC {
 sql: ${TABLE}.ISDIFFERENTSIC;;
}
dimension: ISDIFFERENTSICDESCRIPTION {
 sql: ${TABLE}.ISDIFFERENTSICDESCRIPTION;;
}
dimension: ISDIFFERENTNAICSCODE {
 sql: ${TABLE}.ISDIFFERENTNAICSCODE;;
}
dimension: ISDIFFERENTNAICSDESCRIPTION {
 sql: ${TABLE}.ISDIFFERENTNAICSDESCRIPTION;;
}
dimension: ISDIFFERENTYEARSTARTED {
 sql: ${TABLE}.ISDIFFERENTYEARSTARTED;;
}
dimension: ISDIFFERENTFAX {
 sql: ${TABLE}.ISDIFFERENTFAX;;
}
dimension: ISDIFFERENTACCOUNTSITE {
 sql: ${TABLE}.ISDIFFERENTACCOUNTSITE;;
}
dimension: ISDIFFERENTDESCRIPTION {
 sql: ${TABLE}.ISDIFFERENTDESCRIPTION;;
}
dimension: ISDIFFERENTTRADESTYLE {
 sql: ${TABLE}.ISDIFFERENTTRADESTYLE;;
}
dimension: ISDIFFERENTDANDBCOMPANYDUNSNUMBER {
 sql: ${TABLE}.ISDIFFERENTDANDBCOMPANYDUNSNUMBER;;
}
dimension: ISDIFFERENTSTATECODE {
 sql: ${TABLE}.ISDIFFERENTSTATECODE;;
}
dimension: ISDIFFERENTCOUNTRYCODE {
 sql: ${TABLE}.ISDIFFERENTCOUNTRYCODE;;
}
dimension: CLEANEDBYJOB {
 sql: ${TABLE}.CLEANEDBYJOB;;
}
dimension: CLEANEDBYUSER {
 sql: ${TABLE}.CLEANEDBYUSER;;
}
dimension: ISFLAGGEDWRONGCOMPANYNAME {
 sql: ${TABLE}.ISFLAGGEDWRONGCOMPANYNAME;;
}
dimension: ISFLAGGEDWRONGPHONE {
 sql: ${TABLE}.ISFLAGGEDWRONGPHONE;;
}
dimension: ISFLAGGEDWRONGADDRESS {
 sql: ${TABLE}.ISFLAGGEDWRONGADDRESS;;
}
dimension: ISFLAGGEDWRONGWEBSITE {
 sql: ${TABLE}.ISFLAGGEDWRONGWEBSITE;;
}
dimension: ISFLAGGEDWRONGTICKERSYMBOL {
 sql: ${TABLE}.ISFLAGGEDWRONGTICKERSYMBOL;;
}
dimension: ISFLAGGEDWRONGANNUALREVENUE {
 sql: ${TABLE}.ISFLAGGEDWRONGANNUALREVENUE;;
}
dimension: ISFLAGGEDWRONGNUMBEROFEMPLOYEES {
 sql: ${TABLE}.ISFLAGGEDWRONGNUMBEROFEMPLOYEES;;
}
dimension: ISFLAGGEDWRONGINDUSTRY {
 sql: ${TABLE}.ISFLAGGEDWRONGINDUSTRY;;
}
dimension: ISFLAGGEDWRONGOWNERSHIP {
 sql: ${TABLE}.ISFLAGGEDWRONGOWNERSHIP;;
}
dimension: ISFLAGGEDWRONGDUNSNUMBER {
 sql: ${TABLE}.ISFLAGGEDWRONGDUNSNUMBER;;
}
dimension: ISFLAGGEDWRONGSIC {
 sql: ${TABLE}.ISFLAGGEDWRONGSIC;;
}
dimension: ISFLAGGEDWRONGSICDESCRIPTION {
 sql: ${TABLE}.ISFLAGGEDWRONGSICDESCRIPTION;;
}
dimension: ISFLAGGEDWRONGNAICSCODE {
 sql: ${TABLE}.ISFLAGGEDWRONGNAICSCODE;;
}
dimension: ISFLAGGEDWRONGNAICSDESCRIPTION {
 sql: ${TABLE}.ISFLAGGEDWRONGNAICSDESCRIPTION;;
}
dimension: ISFLAGGEDWRONGYEARSTARTED {
 sql: ${TABLE}.ISFLAGGEDWRONGYEARSTARTED;;
}
dimension: ISFLAGGEDWRONGFAX {
 sql: ${TABLE}.ISFLAGGEDWRONGFAX;;
}
dimension: ISFLAGGEDWRONGACCOUNTSITE {
 sql: ${TABLE}.ISFLAGGEDWRONGACCOUNTSITE;;
}
dimension: ISFLAGGEDWRONGDESCRIPTION {
 sql: ${TABLE}.ISFLAGGEDWRONGDESCRIPTION;;
}
dimension: ISFLAGGEDWRONGTRADESTYLE {
 sql: ${TABLE}.ISFLAGGEDWRONGTRADESTYLE;;
}
dimension: DATADOTCOMID {
 sql: ${TABLE}.DATADOTCOMID;;
}
measure: LATITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: LATITUDE_sum {
type:sum
sql: ${LATITUDE} ;;
 drill_fields: [detail*]
}
measure: LONGITUDE_count {
type:count
 drill_fields: [detail*]
}
measure: LONGITUDE_sum {
type:sum
sql: ${LONGITUDE} ;;
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
measure: DUNSRIGHTMATCHCONFIDENCE_count {
type:count
 drill_fields: [detail*]
}
measure: DUNSRIGHTMATCHCONFIDENCE_sum {
type:sum
sql: ${DUNSRIGHTMATCHCONFIDENCE} ;;
 drill_fields: [detail*]
}
set: detail {
fields: [ID, NAME, CREATEDBYID, LASTMODIFIEDBYID, ACCOUNTID, LASTSTATUSCHANGEDBYID, COMPANYNAME, PHONE, STREET, CITY, STATE, POSTALCODE, COUNTRY, LATITUDE, LONGITUDE, GEOCODEACCURACY, WEBSITE, TICKERSYMBOL, ANNUALREVENUE, NUMBEROFEMPLOYEES, INDUSTRY, OWNERSHIP, DUNSNUMBER, SIC, SICDESCRIPTION, NAICSCODE, NAICSDESCRIPTION, YEARSTARTED, FAX, ACCOUNTSITE, DESCRIPTION, TRADESTYLE, DANDBCOMPANYDUNSNUMBER, DUNSRIGHTMATCHGRADE, DUNSRIGHTMATCHCONFIDENCE, COMPANYSTATUSDATADOTCOM, DATADOTCOMID]
}
}


view: ACCOUNT__93bb4a66_8a3a_4fea_a8c8_dac3ef27d880 {
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