
connection:"presto-qa-1"


explore: CASE__79fa0643_6d9c_41b2_b585_9b3f71ccd2dc {

}


view: CASE__79fa0643_6d9c_41b2_b585_9b3f71ccd2dc {
sql_table_name:sforce.SFORCE.CASE ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: CASENUMBER {
 sql: ${TABLE}.CASENUMBER;;
}
dimension: CONTACTID {
 sql: ${TABLE}.CONTACTID;;
}
dimension: ACCOUNTID {
 sql: ${TABLE}.ACCOUNTID;;
}
dimension: ASSETID {
 sql: ${TABLE}.ASSETID;;
}
dimension: PARENTID {
 sql: ${TABLE}.PARENTID;;
}
dimension: SUPPLIEDNAME {
 sql: ${TABLE}.SUPPLIEDNAME;;
}
dimension: SUPPLIEDEMAIL {
 sql: ${TABLE}.SUPPLIEDEMAIL;;
}
dimension: SUPPLIEDPHONE {
 sql: ${TABLE}.SUPPLIEDPHONE;;
}
dimension: SUPPLIEDCOMPANY {
 sql: ${TABLE}.SUPPLIEDCOMPANY;;
}
dimension: TYPE {
 sql: ${TABLE}.TYPE;;
}
dimension: STATUS {
 sql: ${TABLE}.STATUS;;
}
dimension: REASON {
 sql: ${TABLE}.REASON;;
}
dimension: ORIGIN {
 sql: ${TABLE}.ORIGIN;;
}
dimension: SUBJECT {
 sql: ${TABLE}.SUBJECT;;
}
dimension: PRIORITY {
 sql: ${TABLE}.PRIORITY;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
dimension: ISCLOSED {
 sql: ${TABLE}.ISCLOSED;;
}
dimension: CLOSEDDATE {
 sql: ${TABLE}.CLOSEDDATE;;
}
dimension: ISESCALATED {
 sql: ${TABLE}.ISESCALATED;;
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
dimension: CONTACTPHONE {
 sql: ${TABLE}.CONTACTPHONE;;
}
dimension: CONTACTMOBILE {
 sql: ${TABLE}.CONTACTMOBILE;;
}
dimension: CONTACTEMAIL {
 sql: ${TABLE}.CONTACTEMAIL;;
}
dimension: CONTACTFAX {
 sql: ${TABLE}.CONTACTFAX;;
}
dimension: COMMENTS {
 sql: ${TABLE}.COMMENTS;;
}
dimension: LASTVIEWEDDATE {
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: ENGINEERINGREQNUMBER__C {
 sql: ${TABLE}.ENGINEERINGREQNUMBER__C;;
}
dimension: PRODUCT__C {
 sql: ${TABLE}.PRODUCT__C;;
}
dimension: POTENTIALLIABILITY__C {
 sql: ${TABLE}.POTENTIALLIABILITY__C;;
}
measure: CSAT__C {
type:count_distinct
 sql: ${TABLE}.CSAT__C;;
}
dimension: CASE_EXTERNALID__C {
 sql: ${TABLE}.CASE_EXTERNALID__C;;
}
dimension: FCR__C {
 sql: ${TABLE}.FCR__C;;
}
dimension: PRODUCT_FAMILY_KB__C {
 sql: ${TABLE}.PRODUCT_FAMILY_KB__C;;
}
dimension: SLAVIOLATION__C {
 sql: ${TABLE}.SLAVIOLATION__C;;
}
dimension: SLA_TYPE__C {
 sql: ${TABLE}.SLA_TYPE__C;;
}
}


view: DANDBCOMPANY__98ddb091_fc79_402d_a274_849b7d5c8896 {
sql_table_name:sforce.SFORCE.DANDBCOMPANY ;;
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
dimension: LASTVIEWEDDATE {
 sql: ${TABLE}.LASTVIEWEDDATE;;
}
dimension: LASTREFERENCEDDATE {
 sql: ${TABLE}.LASTREFERENCEDDATE;;
}
dimension: DUNSNUMBER {
 sql: ${TABLE}.DUNSNUMBER;;
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
dimension: GEOCODEACCURACYSTANDARD {
 sql: ${TABLE}.GEOCODEACCURACYSTANDARD;;
}
dimension: PHONE {
 sql: ${TABLE}.PHONE;;
}
dimension: FAX {
 sql: ${TABLE}.FAX;;
}
dimension: COUNTRYACCESSCODE {
 sql: ${TABLE}.COUNTRYACCESSCODE;;
}
dimension: PUBLICINDICATOR {
 sql: ${TABLE}.PUBLICINDICATOR;;
}
dimension: STOCKSYMBOL {
 sql: ${TABLE}.STOCKSYMBOL;;
}
dimension: STOCKEXCHANGE {
 sql: ${TABLE}.STOCKEXCHANGE;;
}
measure: SALESVOLUME {
type:count_distinct
 sql: ${TABLE}.SALESVOLUME;;
}
dimension: URL {
 sql: ${TABLE}.URL;;
}
dimension: OUTOFBUSINESS {
 sql: ${TABLE}.OUTOFBUSINESS;;
}
measure: EMPLOYEESTOTAL {
type:count_distinct
 sql: ${TABLE}.EMPLOYEESTOTAL;;
}
dimension: FIPSMSACODE {
 sql: ${TABLE}.FIPSMSACODE;;
}
dimension: FIPSMSADESC {
 sql: ${TABLE}.FIPSMSADESC;;
}
dimension: TRADESTYLE1 {
 sql: ${TABLE}.TRADESTYLE1;;
}
dimension: YEARSTARTED {
 sql: ${TABLE}.YEARSTARTED;;
}
dimension: MAILINGSTREET {
 sql: ${TABLE}.MAILINGSTREET;;
}
dimension: MAILINGCITY {
 sql: ${TABLE}.MAILINGCITY;;
}
dimension: MAILINGSTATE {
 sql: ${TABLE}.MAILINGSTATE;;
}
dimension: MAILINGPOSTALCODE {
 sql: ${TABLE}.MAILINGPOSTALCODE;;
}
dimension: MAILINGCOUNTRY {
 sql: ${TABLE}.MAILINGCOUNTRY;;
}
dimension: MAILINGGEOCODEACCURACY {
 sql: ${TABLE}.MAILINGGEOCODEACCURACY;;
}
dimension: LATITUDE {
 sql: ${TABLE}.LATITUDE;;
}
dimension: LONGITUDE {
 sql: ${TABLE}.LONGITUDE;;
}
dimension: PRIMARYSIC {
 sql: ${TABLE}.PRIMARYSIC;;
}
dimension: PRIMARYSICDESC {
 sql: ${TABLE}.PRIMARYSICDESC;;
}
dimension: SECONDSIC {
 sql: ${TABLE}.SECONDSIC;;
}
dimension: SECONDSICDESC {
 sql: ${TABLE}.SECONDSICDESC;;
}
dimension: THIRDSIC {
 sql: ${TABLE}.THIRDSIC;;
}
dimension: THIRDSICDESC {
 sql: ${TABLE}.THIRDSICDESC;;
}
dimension: FOURTHSIC {
 sql: ${TABLE}.FOURTHSIC;;
}
dimension: FOURTHSICDESC {
 sql: ${TABLE}.FOURTHSICDESC;;
}
dimension: FIFTHSIC {
 sql: ${TABLE}.FIFTHSIC;;
}
dimension: FIFTHSICDESC {
 sql: ${TABLE}.FIFTHSICDESC;;
}
dimension: SIXTHSIC {
 sql: ${TABLE}.SIXTHSIC;;
}
dimension: SIXTHSICDESC {
 sql: ${TABLE}.SIXTHSICDESC;;
}
dimension: PRIMARYNAICS {
 sql: ${TABLE}.PRIMARYNAICS;;
}
dimension: PRIMARYNAICSDESC {
 sql: ${TABLE}.PRIMARYNAICSDESC;;
}
dimension: SECONDNAICS {
 sql: ${TABLE}.SECONDNAICS;;
}
dimension: SECONDNAICSDESC {
 sql: ${TABLE}.SECONDNAICSDESC;;
}
dimension: THIRDNAICS {
 sql: ${TABLE}.THIRDNAICS;;
}
dimension: THIRDNAICSDESC {
 sql: ${TABLE}.THIRDNAICSDESC;;
}
dimension: FOURTHNAICS {
 sql: ${TABLE}.FOURTHNAICS;;
}
dimension: FOURTHNAICSDESC {
 sql: ${TABLE}.FOURTHNAICSDESC;;
}
dimension: FIFTHNAICS {
 sql: ${TABLE}.FIFTHNAICS;;
}
dimension: FIFTHNAICSDESC {
 sql: ${TABLE}.FIFTHNAICSDESC;;
}
dimension: SIXTHNAICS {
 sql: ${TABLE}.SIXTHNAICS;;
}
dimension: SIXTHNAICSDESC {
 sql: ${TABLE}.SIXTHNAICSDESC;;
}
dimension: OWNORRENT {
 sql: ${TABLE}.OWNORRENT;;
}
measure: EMPLOYEESHERE {
type:count_distinct
 sql: ${TABLE}.EMPLOYEESHERE;;
}
dimension: EMPLOYEESHERERELIABILITY {
 sql: ${TABLE}.EMPLOYEESHERERELIABILITY;;
}
dimension: SALESVOLUMERELIABILITY {
 sql: ${TABLE}.SALESVOLUMERELIABILITY;;
}
dimension: CURRENCYCODE {
 sql: ${TABLE}.CURRENCYCODE;;
}
dimension: LEGALSTATUS {
 sql: ${TABLE}.LEGALSTATUS;;
}
measure: GLOBALULTIMATETOTALEMPLOYEES {
type:count_distinct
 sql: ${TABLE}.GLOBALULTIMATETOTALEMPLOYEES;;
}
dimension: EMPLOYEESTOTALRELIABILITY {
 sql: ${TABLE}.EMPLOYEESTOTALRELIABILITY;;
}
dimension: MINORITYOWNED {
 sql: ${TABLE}.MINORITYOWNED;;
}
dimension: WOMENOWNED {
 sql: ${TABLE}.WOMENOWNED;;
}
dimension: SMALLBUSINESS {
 sql: ${TABLE}.SMALLBUSINESS;;
}
dimension: MARKETINGSEGMENTATIONCLUSTER {
 sql: ${TABLE}.MARKETINGSEGMENTATIONCLUSTER;;
}
dimension: IMPORTEXPORTAGENT {
 sql: ${TABLE}.IMPORTEXPORTAGENT;;
}
dimension: SUBSIDIARY {
 sql: ${TABLE}.SUBSIDIARY;;
}
dimension: TRADESTYLE2 {
 sql: ${TABLE}.TRADESTYLE2;;
}
dimension: TRADESTYLE3 {
 sql: ${TABLE}.TRADESTYLE3;;
}
dimension: TRADESTYLE4 {
 sql: ${TABLE}.TRADESTYLE4;;
}
dimension: TRADESTYLE5 {
 sql: ${TABLE}.TRADESTYLE5;;
}
dimension: NATIONALID {
 sql: ${TABLE}.NATIONALID;;
}
dimension: NATIONALIDTYPE {
 sql: ${TABLE}.NATIONALIDTYPE;;
}
dimension: USTAXID {
 sql: ${TABLE}.USTAXID;;
}
dimension: GEOCODEACCURACY {
 sql: ${TABLE}.GEOCODEACCURACY;;
}
measure: FAMILYMEMBERS {
type:count_distinct
 sql: ${TABLE}.FAMILYMEMBERS;;
}
dimension: MARKETINGPRESCREEN {
 sql: ${TABLE}.MARKETINGPRESCREEN;;
}
dimension: GLOBALULTIMATEDUNSNUMBER {
 sql: ${TABLE}.GLOBALULTIMATEDUNSNUMBER;;
}
dimension: GLOBALULTIMATEBUSINESSNAME {
 sql: ${TABLE}.GLOBALULTIMATEBUSINESSNAME;;
}
dimension: PARENTORHQDUNSNUMBER {
 sql: ${TABLE}.PARENTORHQDUNSNUMBER;;
}
dimension: PARENTORHQBUSINESSNAME {
 sql: ${TABLE}.PARENTORHQBUSINESSNAME;;
}
dimension: DOMESTICULTIMATEDUNSNUMBER {
 sql: ${TABLE}.DOMESTICULTIMATEDUNSNUMBER;;
}
dimension: DOMESTICULTIMATEBUSINESSNAME {
 sql: ${TABLE}.DOMESTICULTIMATEBUSINESSNAME;;
}
dimension: LOCATIONSTATUS {
 sql: ${TABLE}.LOCATIONSTATUS;;
}
dimension: COMPANYCURRENCYISOCODE {
 sql: ${TABLE}.COMPANYCURRENCYISOCODE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
}
measure: FORTUNERANK {
type:count_distinct
 sql: ${TABLE}.FORTUNERANK;;
}
dimension: INCLUDEDINSNP500 {
 sql: ${TABLE}.INCLUDEDINSNP500;;
}
measure: PREMISESMEASURE {
type:count_distinct
 sql: ${TABLE}.PREMISESMEASURE;;
}
dimension: PREMISESMEASURERELIABILITY {
 sql: ${TABLE}.PREMISESMEASURERELIABILITY;;
}
dimension: PREMISESMEASUREUNIT {
 sql: ${TABLE}.PREMISESMEASUREUNIT;;
}
measure: EMPLOYEEQUANTITYGROWTHRATE {
type:count_distinct
 sql: ${TABLE}.EMPLOYEEQUANTITYGROWTHRATE;;
}
measure: SALESTURNOVERGROWTHRATE {
type:count_distinct
 sql: ${TABLE}.SALESTURNOVERGROWTHRATE;;
}
dimension: PRIMARYSIC8 {
 sql: ${TABLE}.PRIMARYSIC8;;
}
dimension: PRIMARYSIC8DESC {
 sql: ${TABLE}.PRIMARYSIC8DESC;;
}
dimension: SECONDSIC8 {
 sql: ${TABLE}.SECONDSIC8;;
}
dimension: SECONDSIC8DESC {
 sql: ${TABLE}.SECONDSIC8DESC;;
}
dimension: THIRDSIC8 {
 sql: ${TABLE}.THIRDSIC8;;
}
dimension: THIRDSIC8DESC {
 sql: ${TABLE}.THIRDSIC8DESC;;
}
dimension: FOURTHSIC8 {
 sql: ${TABLE}.FOURTHSIC8;;
}
dimension: FOURTHSIC8DESC {
 sql: ${TABLE}.FOURTHSIC8DESC;;
}
dimension: FIFTHSIC8 {
 sql: ${TABLE}.FIFTHSIC8;;
}
dimension: FIFTHSIC8DESC {
 sql: ${TABLE}.FIFTHSIC8DESC;;
}
dimension: SIXTHSIC8 {
 sql: ${TABLE}.SIXTHSIC8;;
}
dimension: SIXTHSIC8DESC {
 sql: ${TABLE}.SIXTHSIC8DESC;;
}
measure: PRIORYEAREMPLOYEES {
type:count_distinct
 sql: ${TABLE}.PRIORYEAREMPLOYEES;;
}
measure: PRIORYEARREVENUE {
type:count_distinct
 sql: ${TABLE}.PRIORYEARREVENUE;;
}
}