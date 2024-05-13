

with department as (
    select department_id, department
    from {{ref("stg_department")}}
)
select * from department