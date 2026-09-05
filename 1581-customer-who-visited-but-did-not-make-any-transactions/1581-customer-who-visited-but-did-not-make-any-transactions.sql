#SELECT CUSTOMER_ID , COUNT(T.VISIT_ID) AS COUNT_NO_TRANS
#FROM VISITS AS V left JOIN TRANSACTIONS AS T
#ON V.VISIT_ID = T.VISIT_ID
#GROUP BY v.customer_id having transaction_id is null;


select customer_id,count(v.visit_id) count_no_trans from  VISITS AS V left JOIN TRANSACTIONS AS T ON V.VISIT_ID = T.VISIT_ID where transaction_id is null group by customer_id;