CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID))

--Loaded data
--E1001,John,Thomas,123456,01/09/1976,M,"5631 Rice, OakPark,IL",100,100000,30001,2
--E1002,Alice,James,123457,07/31/1972,F,"980 Berry ln, Elgin,IL",200,80000,30002,5
--E1003,Steve,Wells,123458,08/10/1980,M,"291 Springs, Gary,IL",300,50000,30002,5
--E1004,Santosh,Kumar,123459,07/20/1985,M,"511 Aurora Av, Aurora,IL",400,60000,30004,5
--E1005,Ahmed,Hussain,123410,01/04/1981,M,"216 Oak Tree, Geneva,IL",500,70000,30001,2
--E1006,Nancy,Allen,123411,02/06/1978,F,"111 Green Pl, Elgin,IL",600,90000,30001,2
--E1007,Mary,Thomas,123412,05/05/1975,F,"100 Rose Pl, Gary,IL",650,65000,30003,7
--E1008,Bharath,Gupta,123413,05/06/1985,M,"145 Berry Ln, Naperville,IL",660,65000,30003,7
--E1009,Andrea,Jones,123414,07/09/1990,F,"120 Fall Creek, Gary,IL",234,70000,30003,7
--E1010,Ann,Jacob,123415,03/30/1982,F,"111 Britany Springs,Elgin,IL",220,70000,30004,5


SELECT * FROM EMPLOYEES;
--Query 1: Retrieve all employees whose address is in Elgin,IL
SELECT F_NAME, L_NAME from EMPLOYEES WHERE ADDRESS like '%Elgin,IL%'

























--CREATE TABLE JOB_HISTORY (
--                            EMPL_ID CHAR(9) NOT NULL, 
--                            START_DATE DATE,
--                            JOBS_ID CHAR(9) NOT NULL,
--                            DEPT_ID CHAR(9),
--                            PRIMARY KEY (EMPL_ID,JOBS_ID));
--CREATE TABLE JOBS (
--                            JOB_IDENT CHAR(9) NOT NULL, 
--                            JOB_TITLE VARCHAR(15) ,
--                            MIN_SALARY DECIMAL(10,2),
--                            MAX_SALARY DECIMAL(10,2),
--                            PRIMARY KEY (JOB_IDENT));
--CREATE TABLE DEPARTMENTS (
--                            DEPT_ID_DEP CHAR(9) NOT NULL, 
--                            DEP_NAME VARCHAR(15) ,
--                            MANAGER_ID CHAR(9),
--                            LOC_ID CHAR(9),
--                            PRIMARY KEY (DEPT_ID_DEP));
--CREATE TABLE LOCATIONS (
--                            LOCT_ID CHAR(9) NOT NULL,
--                            DEP_ID_LOC CHAR(9) NOT NULL,
--                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));