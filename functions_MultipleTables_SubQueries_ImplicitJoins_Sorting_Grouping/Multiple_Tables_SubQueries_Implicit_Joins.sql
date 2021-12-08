
--Exercise 1: Accessing Multiple Tables with Sub-Queries

--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * from EMPLOYEES where JOB_ID in (select JOB_IDENT from jobs);

--Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
select * from EMPLOYEES where JOB_ID in (select JOB_IDENT from jobs WHERE JOB_TITLE LIKE 'Jr. Designer');

--Retrieve JOB information and list of employees who earn more than $70,000.
select * from JOBS where JOB_IDENT in (select JOB_ID from employees where SALARY > 70000);

--Retrieve JOB information and list of employees whose birth year is after 1976.
select * from JOBS where JOB_IDENT in (select JOB_ID from employees where year(B_DATE)>1970);

--Retrieve JOB information and list of female employees whose birth year is after 1976.
select * from JOBS where JOB_IDENT in (select JOB_ID from employees where SEX='F' and year(B_DATE)>1970);




--Exercise 2: Accessing Multiple Tables with Implicit Joins

--Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.
select * from employees, jobs;

--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * from employees, jobs where jobs.JOB_IDENT=employees.JOB_ID

--Redo the previous query, using shorter aliases for table names.
select * from employees e, jobs j where j.JOB_IDENT=e.JOB_ID

--Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
select EMP_ID, F_NAME, L_NAME, JOB_TITLE from employees e, jobs j where j.JOB_IDENT=e.JOB_ID

--Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.
select EMP_ID, F_NAME, L_NAME, JOB_TITLE from employees e, jobs j where j.JOB_IDENT=e.JOB_ID

