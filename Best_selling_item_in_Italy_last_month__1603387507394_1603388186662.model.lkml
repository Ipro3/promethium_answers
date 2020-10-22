
connection:"presto-qa-1"


explore: OPPORTUNITYLINEITEM__aeeb6351_49ce_46a6_9a2a_09bd481c0c2b {

join: ORDERITEM__988628cb_c0f3_4378_8f8a_e076104d3b16 {
 relationship: one_to_one
 sql_on: ${OPPORTUNITYLINEITEM__aeeb6351_49ce_46a6_9a2a_09bd481c0c2b.PRODUCT2ID} > ${ORDERITEM__988628cb_c0f3_4378_8f8a_e076104d3b16.PRODUCT2ID} ;;
}
}


view: OPPORTUNITYLINEITEM__aeeb6351_49ce_46a6_9a2a_09bd481c0c2b {
sql_table_name:sforce.SFORCE.OPPORTUNITYLINEITEM ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: OPPORTUNITYID {
 sql: ${TABLE}.OPPORTUNITYID;;
}
measure: SORTORDER {
type:count_distinct
 sql: ${TABLE}.SORTORDER;;
}
dimension: PRICEBOOKENTRYID {
 sql: ${TABLE}.PRICEBOOKENTRYID;;
}
dimension: PRODUCT2ID {
 sql: ${TABLE}.PRODUCT2ID;;
}
dimension: PRODUCTCODE {
 sql: ${TABLE}.PRODUCTCODE;;
}
dimension: NAME {
 sql: ${TABLE}.NAME;;
}
measure: QUANTITY {
type:count_distinct
 sql: ${TABLE}.QUANTITY;;
}
measure: TOTALPRICE {
type:count_distinct
 sql: ${TABLE}.TOTALPRICE;;
}
measure: UNITPRICE {
type:count_distinct
 sql: ${TABLE}.UNITPRICE;;
}
measure: LISTPRICE {
type:count_distinct
 sql: ${TABLE}.LISTPRICE;;
}
dimension: SERVICEDATE {
 sql: ${TABLE}.SERVICEDATE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
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
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
}


view: ORDERITEM__988628cb_c0f3_4378_8f8a_e076104d3b16 {
sql_table_name:sforce.SFORCE.ORDERITEM ;;
dimension: ID {
 sql: ${TABLE}.ID;;
}
dimension: PRODUCT2ID {
 sql: ${TABLE}.PRODUCT2ID;;
}
dimension: ISDELETED {
 sql: ${TABLE}.ISDELETED;;
}
dimension: ORDERID {
 sql: ${TABLE}.ORDERID;;
}
dimension: PRICEBOOKENTRYID {
 sql: ${TABLE}.PRICEBOOKENTRYID;;
}
dimension: ORIGINALORDERITEMID {
 sql: ${TABLE}.ORIGINALORDERITEMID;;
}
measure: AVAILABLEQUANTITY {
type:count_distinct
 sql: ${TABLE}.AVAILABLEQUANTITY;;
}
measure: QUANTITY {
type:count_distinct
 sql: ${TABLE}.QUANTITY;;
}
measure: UNITPRICE {
type:count_distinct
 sql: ${TABLE}.UNITPRICE;;
}
measure: LISTPRICE {
type:count_distinct
 sql: ${TABLE}.LISTPRICE;;
}
measure: TOTALPRICE {
type:count_distinct
 sql: ${TABLE}.TOTALPRICE;;
}
dimension: SERVICEDATE {
 sql: ${TABLE}.SERVICEDATE;;
}
dimension: ENDDATE {
 sql: ${TABLE}.ENDDATE;;
}
dimension: DESCRIPTION {
 sql: ${TABLE}.DESCRIPTION;;
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
dimension: ORDERITEMNUMBER {
 sql: ${TABLE}.ORDERITEMNUMBER;;
}
}