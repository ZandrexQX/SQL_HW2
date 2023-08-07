select * from sales;

alter table homework2.sales
add column class varchar(100);

update homework2.sales 
set class = case when order < 100 then '0 to 100'
				 when order between 100 and 300 then '100 to 300'
				 when order > 300 then 'more 300'
				 else 'FAIL' end;
select * from sales;
select id,
		date,
        order,
		case when order < 100 then '0 to 100'
			 when order between 100 and 300 then '100 to 300'
			 when order > 300 then 'more 300'
			 else 'FAIL' end as class
from sales;