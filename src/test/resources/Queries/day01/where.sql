SELECT * FROM EMPLOYEES;


--display all information of where first name is david

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

-- '' --> whatever inside this is case sensitive.

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'David' or LAST_NAME = 'Lee';

--display firstname, lastname, salary where firstname is Peter

SELECT first_name, last_name, salary FROM EMPLOYEES
WHERE FIRST_NAME = 'Peter';

--display all information from employees where salary is bigger than 6000

select *
from EMPLOYEES
where salary > 6000;

--display email of who is making less than 5000

select email
from EMPLOYEES
where salary > 5000;

--display all info from employees who is making more than 7000 and department id is 60

select *
from EMPLOYEES
where salary > 7000 and department_id = 60;

--display all info from employees where salary equals or more than 3000 and salary equals or less than 7000

select *
from EMPLOYEES
where salary >= 3000 and salary <= 7000;

-- the second statement is also providing the same logic above statement by using 'between and' key
select *
from EMPLOYEES
where salary  between 3000 and 7000;


--display all information from employees who is working as IT_PROG or MK_MAN

select * from employees
where job_id = 'IT_PROG' or job_id = 'MK_MAN';

--solution 2
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN('IT_PROG','MK_MAN');

--display all info where employee id 121, 142, 154, 165, 187
--solution 1

select * from EMPLOYEES
where employee_id = 121 or employee_id = 142 or  employee_id = 154 or employee_id = 165 or employee_id = 187


--solution 2

select * from EMPLOYEES
where employee_id in (121, 142, 154, 165, 187)


--display all information where country id is US and IT

select * from COUNTRIES
where COUNTRY_ID in ('US', 'IT');

--display all information except where country id is US and IT

select * from COUNTRIES
where COUNTRY_ID not in ('US', 'IT');


--IS NULL
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

SELECT * FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

--IS NOT NULL
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL;



