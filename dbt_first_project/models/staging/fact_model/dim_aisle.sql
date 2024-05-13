
with aisle as (
   select  aisle_id, aisle
    from {{ref("stg_aisles")}})

select * from aisle



