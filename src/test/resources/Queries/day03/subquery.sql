select * from EMPLOYEES;

--Display all information who is making max salary
--max salary
SELECT MAX(SALARY) FROM EMPLOYEES; --24000

--if we know max salary can we find who is getting it ?

select *
from employees
where salary = 24000;

--if the Steven King salary changes we cant find person who is getting max salary with the query above

--dynamic result

SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);
-- we have multiple queries in one statement which called sub-query
-- first the inner query executed then the outer query

--TASK: Give me all information who is getting min salary
select * from EMPLOYEES
where salary = (select min(salary) from employees);

--min salary ?
SELECT MIN(SALARY)
FROM EMPLOYEES;

--who is making min salary ?
SELECT * FROM EMPLOYEES
WHERE SALARY = 2100;
--dynamic query
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

--display all information who is getting second highest salary ?
--find max salary
select max(salary) from employees;

--second max salary
--second max salary
SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY <24000;
--who is making 17000

SELECT *
FROM EMPLOYEES
WHERE SALARY = 17000;

--make it dynamic
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES WHERE SALARY <
               (SELECT MAX(SALARY) FROM EMPLOYEES));
-- we have 3 queries here


--TASK: Display all information who is getting more than average ?
--find average salary
select avg(salary) from employees;

--who is making more than average salary ?

select *
from EMPLOYEES
where salary > (select avg(salary) from employees);




