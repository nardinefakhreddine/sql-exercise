problem 0:
-----------
SELECT * from students

Basic queries:
--------------
1- SELECT name from students// RESULT 7 ROWS

2- SELECT * from students WHERE age>30 ;

3-SELECT * FROM students WHERE age > 30 AND Gender = "F";//RESULT 1 ROW

   SELECT * FROM students WHERE age =30 AND Gender = "F";//RESULT 0 ROW

4- SELECT Points FROM students WHERE Name = 'Alex';//1 ROW 1 COLUMN

5-INSERT INTO students (ID, Name, Age, Gender, Points) VALUES (NULL, 'Nardine', '28', 'F', 500);
      Result : query executed successfully. Took 1ms, 1 rows affected

6- UPDATE students SET Points=400 WHERE name = 'Basma';
    //Result: query executed successfully. Took 0ms, 1 rows affected

7-Update students SET Points=180 where name="Alex"
     //Result: query executed successfully. Took 0ms, 1 rows affected

Creating Table:
----------------
CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT
);
INSERT INTO graduates (ID, Name, Age, Gender, Points) 
SELECT * from students WHERE name = 'Layal';
UPDATE graduates SET Graduation = '2020-10-06';
DELETE FROM students WHERE name = 'Layal';

Joins:
--------
CREATE TABLE employecompany AS SELECT employees.Name, Company, Date FROM employees INNER JOIN companies ON employees.Company = companies.Name;
SELECT Name from employecompany WHERE Date < 2000;
SELECT Company from employees WHERE Role='Graphic Designer';

Count & Filter:
----------------

SELECT name, max(Points) AS 'highest number of points' FROM students;
SELECT avg(Points) AS 'Average P' FROM students;
SELECT COUNT(ID) from students WHERE Points = 500;
SELECT * from students WHERE Name like '%s%';
SELECT * from students ORDER BY Points DESC;