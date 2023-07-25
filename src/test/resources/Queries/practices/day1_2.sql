/*
        Part 1
        Select - Distinct - Where - Order By - Like -
        Group By - Having*/


-- 1. List all the employees first and last name with their salary in employees table

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES;
 --2. How many employees have salary less than 5000?
 SELECT * FROM EMPLOYEES;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY<5000;

--3. How many employees have salary between 6000 and 7000?

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY BETWEEN 6000 and 7000;

-- 4. List all the different region_ids in countries table

SELECT DISTINCT REGION_ID FROM COUNTRIES;

--5. Display the salary of the employee Grant Douglas (lastName: Grant,
--firstName: Douglas)

SELECT SALARY
FROM EMPLOYEES
WHERE FIRST_NAME ='Douglas'AND LAST_NAME = 'Grant';

/*
6. Display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
*/

SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_NAME in ('IT' , 'Public Relations' , 'Sales' , 'Executive');

--7. Display the maximum salary in employees table

SELECT sum(SALARY) FROM EMPLOYEES;



