select * from employees;

--Task: how many locations we have for each country
select country_id, count(*)
from LOCATIONS
group by COUNTRY_ID;

--order them based country_id asc
select country_id, count(*)
from LOCATIONS
group by COUNTRY_ID
order by country_id desc;

--what if I want to see only US,UK and CA
select country_id, count(*)
from LOCATIONS
where country_id  in ('US','UK' ,'CA')
group by COUNTRY_ID
order by country_id desc;

--display where location count is bigger than 2
select country_id, count(*)
from LOCATIONS
where country_id  in ('US','UK' ,'CA')
group by COUNTRY_ID
having count(*)>2
order by country_id desc;


--TASK2: Display all employees salary in following format as column name Employees_salary
--Ex:
-- Steven makes 24000
-- Neena makes 17000

SELECT FIRST_NAME||' makes '||SALARY as Employees_salary
FROM EMPLOYEES;

