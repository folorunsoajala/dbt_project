
with source as 
(select * from  {{source('instacart_dump','products')}})
select * from source




