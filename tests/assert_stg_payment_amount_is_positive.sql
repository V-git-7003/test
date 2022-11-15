with payments as
 (select * from {{ ref('stg_payments')}})

 select ORDERID, sum(AMOUNT) as total from payments
 group by ORDERID having total<0