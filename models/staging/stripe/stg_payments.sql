WITH payments as 
(SELECT ID as payment_id,
 orderid,
 paymentmethod,
 status,
 amount,
 created from {{ source('stripe','payment')}})
 
 select * from payments