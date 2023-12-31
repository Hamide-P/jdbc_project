select * from employees;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
--- CREATE TABLE ----

create table scrumteam_hamide(
    emp_id Integer PRIMARY KEY, -- we can't use second primary key
    first_name varchar(30) not null, -- the length of the name should be 30 and not null
    last_name varchar(20) not null,
    job_title varchar(20),
    salary Integer
);

select * from scrumteam;

/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/


INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (1,'Hamide','Pehlivan','Tester',130000);

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (2,'Harold','Finch','Developer',140000);

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (3,'Phoebe','Buffay','Scrum Master',90000);

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (4,'Michael','Scofield','PO',150000);

--save changes so that other people,connections can get the updates.
commit;


/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

SELECT * FROM SCRUMTEAM;

UPDATE SCRUMTEAM
SET SALARY=SALARY+5000;

UPDATE SCRUMTEAM
SET SALARY= 110000
WHERE EMP_ID = 3;

commit work;

/*
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM SCRUMTEAM
WHERE EMP_ID = 3;

commit ;
--CRUD
--CREATE (INSERT)
--READ (SELECT)
--UPDATE (UPDATE)
--DELETE (DELETE)


--ALTER

--ADD NEW COLUMN

ALTER TABLE SCRUMTEAM ADD gender varchar(10);

SELECT * FROM SCRUMTEAM;

UPDATE SCRUMTEAM
SET GENDER = 'Male'
WHERE EMP_ID = 1;

--RENAME THE COLUMN
ALTER TABLE SCRUMTEAM RENAME COLUMN salary TO annual_salary;
-- after changing the annual salary then salary name will be not used
--DROP COLUMN

ALTER TABLE SCRUMTEAM DROP COLUMN gender;

--RENAME TABLE
ALTER TABLE SCRUMTEAM RENAME TO agileteam;

SELECT * FROM agileteam;

--TRUNCATE
TRUNCATE TABLE agileteam; -- clean the data

--DROP TABLE
DROP TABLE agileteam;

commit;

/*
    IQ --> what is the difference between TRUNCATE and DROP
        TRUNCATE --> it will delete table content,but keep the table
        DROP --> it will delete all content and table itself.
