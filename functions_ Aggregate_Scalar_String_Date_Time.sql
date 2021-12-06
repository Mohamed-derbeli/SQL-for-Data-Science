--Built-in functions - Aggregate, Scalar, String, Date and Time Functions

-- Drop the PETRESCUE table in case it exists
drop table PETRESCUE;
-- Create the PETRESCUE table 
create table PETRESCUE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE,
	PRIMARY KEY (ID)  );
-- Insert sample data into PETRESCUE table
insert into PETRESCUE values 
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15')  ;

select * from PETRESCUE

--Aggregate Functions
--Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
select sum(COST) from PETRESCUE
--Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
select sum(COST) as sum_of_cost from PETRESCUE
--Query A3: Enter a function that displays the maximum quantity of animals rescued.
select max(QUANTITY) from PETRESCUE
--Query A4: Enter a function that displays the average cost of animals rescued.
select avg(COST) from PETRESCUE
--Query A5: Enter a function that displays the average cost of rescuing a dog.
select AVG(COST/QUANTITY) from PETRESCUE where ANIMAL = 'Dog'


--Scalar and String Functions
--Query B1: Enter a function that displays the rounded cost of each rescue.
select round(COST) from PETRESCUE
--Query B2: Enter a function that displays the length of each animal name.
select length(ANIMAL) from PETRESCUE
--Query B3: Enter a function that displays the animal name in each rescue in uppercase.
select upper(ANIMAL) from PETRESCUE
--Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.
select distinct(upper(ANIMAL)) from PETRESCUE
--Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
select * from PETRESCUE where Lower(ANIMAL) = 'cat'

--Date and Time Functions
--Query C1: Enter a function that displays the day of the month when cats have been rescued.
select day(RESCUEDATE) AS DAY_OF_MONTH from PETRESCUE where ANIMAL = 'Cat'
--Query C2: Enter a function that displays the number of rescues on the 5th month.
select SUM(QUANTITY) AS NUM_OF_RES from PETRESCUE where MONTH(RESCUEDATE) = 05
--Query C3: Enter a function that displays the number of rescues on the 14th day of the month.
select SUM(QUANTITY) AS NUM_OF_RES from PETRESCUE where DAY(RESCUEDATE) = 14
--Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
select RESCUEDATE, (RESCUEDATE + 3 DAYS) AS THIRD_DAY_FROM_RES from PETRESCUE 
--Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.
select(CURRENT DATE - RESCUEDATE) AS LENGTH_DAY from PETRESCUE 
















