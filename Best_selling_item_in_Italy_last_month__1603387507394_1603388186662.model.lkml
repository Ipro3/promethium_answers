
connection:"presto-qa-1"


explore: OPPORTUNITYLINEITEM__98d29da8_e99e_41da_9dab_e9fb7c7e3e18 {

join: ORDERITEM__6590e5d9_c9a1_421a_b393_eed60ed7680d {
 relationship: one_to_one
 sql_on: ${OPPORTUNITYLINEITEM__98d29da8_e99e_41da_9dab_e9fb7c7e3e18.PRODUCT2ID} = ${ORDERITEM__6590e5d9_c9a1_421a_b393_eed60ed7680d.PRODUCT2ID} ;;
}
}


view: ORDERITEM__6590e5d9_c9a1_421a_b393_eed60ed7680d {
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


view: OPPORTUNITYLINEITEM__98d29da8_e99e_41da_9dab_e9fb7c7e3e18 {
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