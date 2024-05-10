
with source as (
    select * from {{source('instacart_dump','orders')}})
    select * from source
    
 