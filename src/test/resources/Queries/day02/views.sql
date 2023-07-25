SELECT * FROM EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials ,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;


CREATE VIEW EMPLOYEEINFO as-- virtual table ,it's not a real table THAT CONTAINS DATA FROM 1 OR MULTIPLE TABLES
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials ,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;


select initials from employeeinfo;

--drop view

DROP VIEW EMPLOYEEINFO;
