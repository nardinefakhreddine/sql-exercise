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

