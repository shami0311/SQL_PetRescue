-- Create the PETRESCUE table 
create table PETRESCUE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE,
	PRIMARY KEY (ID)
	);
    
 select *from PETRESCUE;
 
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
	(9,'Dog',2,222.22,'2018-06-15')	
;

-- Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
select sum(COST) FROM PETRESCUE;

-- Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

-- Enter a function that displays the maximum quantity of animals rescued.
SELECT MAX(QUANTITY) FROM PETRESCUE;

-- Enter a function that displays the average cost of animals rescued.
SELECT AVG(COST) FROM PETRESCUE;

  select *from PETRESCUE;

-- Enter a function that displays the average cost of rescuing a dog.
SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL = 'Dog';

-- Enter a function that displays the rounded cost of each rescue.
SELECT round(COST) FROM PETRESCUE;

-- Enter a function that displays the length of each animal name.
SELECT ANIMAL,LENGTH(ANIMAL) FROM PETRESCUE;

-- Enter a function that displays the animal name in each rescue in uppercase.
SELECT ANIMAL,UCASE(ANIMAL) FROM PETRESCUE;

-- Enter a function that displays the animal name in each rescue in uppercase without duplications.
SELECT distinct(UCASE(ANIMAL)) FROM PETRESCUE;

-- Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL) = 'Cat';

-- Enter a function that displays the day of the month when cats have been rescued.
SELECT DAY(RESCUEDATE) FROM PETRESCUE WHERE ANIMAL = 'Cat';

-- Enter a function that displays the number of rescues on the 5th month.
SELECT SUM(QUANTITY) FROM PETRESCUE WHERE MONTH(RESCUEDATE) = '05';

-- Enter a function that displays the number of rescues on the 14th day of the month.
SELECT SUM(QUANTITY) FROM PETRESCUE WHERE DAY(RESCUEDATE) = '14';

-- Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
SELECT ANIMAL, RESCUEDATE + 3 DAYS FROM PETRESCUE;

-- Enter a function that displays the length of time the animals have been rescued; the difference between todays date and the rescue date.
select (CURRENT_DATE - RESCUEDATE) from PETRESCUE;