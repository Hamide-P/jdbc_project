select * from employees;

/*
  it limits rows based on provided number
 */

SELECT * FROM EMPLOYEES
WHERE ROWNUM <11;

--display all information from employees who is getting first 5 highest salary
--BAD PRACTICE
--IT is getting data before order them based on salary
--and cut the list from line 6 then it tries to order them between first 5 rows
--that is why we are getting wrong list
SELECT * FROM EMPLOYEES
WHERE ROWNUM<6
ORDER BY SALARY DESC;


--
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;

--correct answer
--using ordered by salary desc employees table as an input,
-- after FROM keyword then cutting first 5 with rownum
SELECT *
FROM (SELECT * FROM EMPLOYEES ORDER BY SALARY DESC)
WHERE ROWNUM < 6;

--display all information who is getting 5th highest salary
--remove the duplicated salary first and then range them
select distinct salary from EMPLOYEES
order by salary desc;

--first we need to find what is 5th highest salary

/*This query finds the 5th highest salary from the EMPLOYEES
table by selecting the minimum salary value among the top
five distinct salary values in descending order.
  */
select min (salary) from (select distinct salary from EMPLOYEES
order by salary desc) -- remove the employees and paste the above query here
where rownum < 6; -- 13000

--who is making 5th highest salary ?
select *  from EMPLOYEES
where salary = 13000; -- not dynamic


--dynamic way 5th

select *  from EMPLOYEES
where salary = (select min (salary) from (select distinct salary from EMPLOYEES
                order by salary desc)
                where rownum < 6);

--IQ how do you find who is making 37th highest salary
-- for the Nth highest salary formula is rownum < N+1
-- for the 37th highest salary rownum < 37+1 = 38

select *  from EMPLOYEES
where salary = (select min (salary) from (select distinct salary from EMPLOYEES
                                          order by salary desc)
                where rownum < 38);

--HOMEWORK --> display all information who is getting 3th lowest salary

select *  from EMPLOYEES
where salary = (select max(salary) from (select distinct salary from EMPLOYEES
                                          order by salary desc)
                where rownum < 4);