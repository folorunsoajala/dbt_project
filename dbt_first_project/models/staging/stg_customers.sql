

with source as (
    select * from {{source('instacart_dump','customers')}}),
    name_merge as 
    (select customer_id,
    concat(first_name,' ', last_name) as customer_name,
    email,
    address,
    phone_number,
    country,
    age,
    gender from source)

    select * from name_merge


   