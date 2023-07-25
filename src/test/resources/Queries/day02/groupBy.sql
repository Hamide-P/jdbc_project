--your manager is asking all jobs and their average salary.

select * from employees;

--get me average salary for IT_PROG

select avg(salary ) from EMPLOYEES
where job_id = 'IT_PROG';

--get me average salary for 'AC_ACCOUNT'
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AC_ACCOUNT';


--get me average salary for 'AC_ACCOUNT'
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AD_ASST';

SELECT AVG(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, AVG(SALARY), COUNT(*), SUM(SALARY), MIN(SALARY), MAX(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID; -- We can only use aggregate functions the column that we want use the group by

--Display how many departments we have in each location
 SELECT * from departments;

select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID;

--order result based on number of departments in desc

select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by count(*) desc;


SELECT LOCATION_ID, COUNT(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID
ORDER BY 2 ASC;

--display how many countries we have in each regions

select * from COUNTRIES;

select REGION_ID , count(*)
from COUNTRIES
group by REGION_ID;

--order them based on number of countries in desc

select REGION_ID , count(*)
from COUNTRIES
group by REGION_ID
order by 2 desc; -- order of column names (2)

select REGION_ID , count(*)
from COUNTRIES
group by REGION_ID
order by count(*) asc;

--get me total salary for each department from employees table.

select * from employees;

select department_id, sum(salary), count(*)
from employees
group by DEPARTMENT_ID;

select department_id, sum(salary), count(*)
from employees
where DEPARTMENT_ID is not null -- before grouping them we give condition which employee can not be null
group by DEPARTMENT_ID;

---display job ids where their avg salary more than 5k

select job_id, avg(salary)
from EMPLOYEES
group by JOB_ID
having avg(salary)>5000;
-- is the same with where clause but we can use it after the group by


--display departments where their average salary is more than 6k
select DEPARTMENT_ID, round(avg(salary))
from EMPLOYEES
where DEPARTMENT_ID is not null --to remove null department id from the result
group by DEPARTMENT_ID
having avg(salary)>6000
order by 2 desc;


--IQ --> display duplicate(more than one) firstname from employees table.

select FIRST_NAME, count(*)
from EMPLOYEES
group by first_name
having count(*)>1;


--display department id where employees count is bigger than 5
select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) >5
order by 2 desc;
