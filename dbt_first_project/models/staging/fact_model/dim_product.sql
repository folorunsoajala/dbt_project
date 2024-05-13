

with product as (
    select product_id, product_name, product_category
    from {{ref("stg_products")}}
)

select * from product