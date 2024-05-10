
with source as 
(select * from {{source('instacart_dump','payment')}})
select * from source   