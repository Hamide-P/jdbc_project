SELECT * FROM EMPLOYEES;

/*
    AGGREGATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS
    - count --> it will count rows
    - max --> it will max value
    - min --> it will min value
    - sum --> it will give total value
    -- avg --> it will give average value

    Aggregate functions takes multi row and return one result
    All of them ignore null values.
 */

-- how many departments we have ?

select * from departments;
select count(*) from departments;

-- How many locations we have ?

select * from locations;
select count(*) from locations;
-- * means only based on how many rows table has , it doesn't effect the null values


select * from employees;
--null values
SELECT COUNT(DEPARTMENT_ID)
FROM EMPLOYEES;
-- if you count based on specific column, then it will not count the null values

--TASK:
-- how many different firstname we have ?
select count(distinct first_name) from employees;
-- deleted the duplicated names

--how many employees working as IT_PROG or SA_REP

select * from employees
where JOB_ID in ('IT_PROG', 'SA_REP');

select count(*) from employees
where JOB_ID in ('IT_PROG', 'SA_REP');

--max
select max(salary) from employees;

--min
select min(salary) from employees;

--avarage
select avg(salary)
from employees;

select round(avg(salary),) from employees;-- after dot we will get the whole number only
select round(avg(salary),1) from employees; -- after dot we will get the one number
select round(avg(salary),2) from employees; -- after dot we will get the two numbers
select round(avg(salary),3) from employees; -- after dot we will get the three numbers
select round(avg(salary),4) from employees; -- after dot we will get the four numbers

--SUM
SELECT sum(SALARY) FROM EMPLOYEES;
