--Retrieving rows using string pattern
--Query 1: Retrieve all employees whose address is in Elgin,IL
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL%'
--Query 2: Retrieve all employees who were born during the 1970's.
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE B_DATE LIKE '197%'

--Retrieving rows using Ranges
--Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
SELECT F_NAME, L_NAME 
FROM EMPLOYEES 
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID=5;

--Sorting Result Sets
--Query 4A: Retrieve a list of employees ordered by department ID.
select F_NAME, L_NAME 
from EMPLOYEES 
order by DEP_ID;
--Query 4B: Retrieve a list of employees ordered in descending order by department ID and 
--within each department ordered alphabetically in descending order by last name.
select F_NAME, L_NAME 
from EMPLOYEES 
order by DEP_ID DESC, L_NAME DESC

--Grouping/ count Result Sets/
--Query 5A: For each department ID retrieve the number of employees in the department.
select DEP_ID, count(DEP_ID) as NUM_OF_EMP 
from EMPLOYEES 
group by DEP_ID

--Count/ Average/count  
--Query 5B: For each department retrieve the number of employees in the department, and 
--the average employees salary in the department.
select DEP_ID,count(DEP_ID),AVG(SALARY) as AVERAGE 
from EMPLOYEES 
group by DEP_ID 

--Sort/ grouping/average/count 
--Query 5C: In Query 5B order the result set by Average Salary.
select count(DEP_ID),AVG(SALARY) as AVERAGE 
from EMPLOYEES 
group by DEP_ID 
order by AVERAGE

--Query 5D: In Query 5C limit the result to departments with fewer than 4 employees.
select count(DEP_ID),AVG(SALARY) 
from EMPLOYEES 
group by DEP_ID 
having count(DEP_ID)<4 
order by AVG(SALARY)

--Query 6: Similar to 4B but instead of department ID use department name. Retrieve a list of employees ordered by
-- department name, and within each department ordered alphabetically in descending order by last name.
select D.DEP_NAME, E.F_NAME, E.L_NAME -- we used D and E to make it short
from DEPARTMENTS as D, EMPLOYEES as E 
order by DEP_NAME, L_NAME DESC

--Note: 'WHERE clause' is used for filtering the entire result set whereas the 'HAVING clause' is used for filtering the result of the grouping
