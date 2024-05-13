

select department, total_amount, profit
from department d
left join fact_orders f
on d.department_id = f.department_id