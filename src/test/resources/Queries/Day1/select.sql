SELECT * FROM EMPLOYEES;

/*
 for running shortcut:

 MAC --> CMD + ENTER

 WIN --> CTRL + ENTER
*/

select * from departments;

-- SQL language is not case sensitive

--display firstname from employees table

-- Each SQL statement needs to end with semi-colon

select FIRST_NAME from EMPLOYEES;

-- If we wanna get multiple column names we should use comma
select FIRST_NAME,LAST_NAME from EMPLOYEES;

select salary, email FROM EMPLOYEES;

--display all information from locations table
SELECT * FROM LOCATIONS;

--display country name and region id from countries table
select Country_name, region_id from countries;

--display job id and job title from jobs table
select job_id, job_title from jobs;

select employees.first_name, departments.department_name from departments, employees;


