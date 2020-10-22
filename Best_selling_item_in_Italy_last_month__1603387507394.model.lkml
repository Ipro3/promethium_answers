
connection:"presto-qa-1"


explore: OPPORTUNITYLINEITEM__4c139810_118e_4b36_b425_04dcf2726ef0 {

join: ORDERITEM__2ec240cc_eb1b_4b5b_88e9_8cd47eb9da76 {
 relationship: one_to_one
 sql_on: ${OPPORTUNITYLINEITEM__4c139810_118e_4b36_b425_04dcf2726ef0.PRODUCT2ID} = ${ORDERITEM__2ec240cc_eb1b_4b5b_88e9_8cd47eb9da76.PRODUCT2ID} ;;
}
}


view: OPPORTUNITYLINEITEM__4c139810_118e_4b36_b425_04dcf2726ef0 {
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


view: ORDERITEM__2ec240cc_eb1b_4b5b_88e9_8cd47eb9da76 {
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