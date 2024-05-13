 

with customer as(
    select customer_id, customer_name, email, address, phone_number, country, gender
    from {{ref("stg_customers")}}
)

select * from customer 