


with source as 
(select * from  {{source('instacart_dump','department')}})
select * from source




