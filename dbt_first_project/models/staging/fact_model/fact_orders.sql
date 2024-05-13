
with product as
(select product_id, unit_price, unit_cost, department_id, aisle_id 
from {{ref("stg_products")}}),

customer as (
    select customer_id,age from {{ref("stg_customers")}}
),

orders as (
    select order_id, customer_id, product_id, quantity, order_dow ,order_date
    from {{ref("stg_orders")}}
),

cte as (
    select p.unit_cost, p.unit_price, p.department_id, p.aisle_id,
           c.age,
           o.order_id, o.customer_id, o.product_id, o.quantity, o.order_dow, o.order_date,
           o.quantity*p.unit_price as total_amount, 
           (p.unit_price-p.unit_cost)*o.quantity as profit
    from product p
    join orders o 
    on p.product_id = o.product_id
    join customer c
    on c.customer_id = o.customer_id
)

select * from cte 