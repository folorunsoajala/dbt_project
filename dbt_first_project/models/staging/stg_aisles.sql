
with source as 
(select * from {{source('instacart_dump','aisles')}})
select * from source   