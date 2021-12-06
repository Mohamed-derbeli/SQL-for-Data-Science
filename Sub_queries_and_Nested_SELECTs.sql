--Sub-queries and Nested SELECTs

--1) Execute a failing query (i.e. one which gives an error) to retrieve all employees records whose salary is lower than the average salary.
select * FROM EMPLOYEES WHERE SALARY < avg(salary); -- ERROR

--2) Execute a working query using a sub-select to retrieve all employees records whose salary is lower than the average salary.
select * FROM EMPLOYEES WHERE SALARY < (select avg(salary) from EMPLOYEES) ;

--3) Execute a failing query (i.e. one which gives an error) to retrieve all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
select EMP_ID, SALARY, MAX(SALARY) as MAX_SALARY FROM EMPLOYEES; -- error

--4) Execute a Column Expression that retrieves all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
select EMP_ID, SALARY, (select MAX(SALARY) as MAX_SALARYFROM from EMPLOYEES ) FROM EMPLOYEES; 

--5) Execute a Table Expression for the EMPLOYEES table that excludes columns with sensitive employee data (i.e. does not include columns: SSN, B_DATE, SEX, ADDRESS, SALARY).
select * from (SELECT EMP_ID, F_NAME, L_NAME, JOB_ID, MANAGER_ID,DEP_ID FROM EMPLOYEES) AS EMP_NO_SENSITIVE;	