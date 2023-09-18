1)SELECT name FROM students

2)SELECT * FROM students
WHERE Age>30

3)SELECT name FROM students
WHERE Gender='F' AND Age=30

4)SELECT Points FROM students
WHERE name='Alex'

5)INSERT INTO students
(Name,Age,Gender,Points)
VALUES
("Mohammad",27,'M',700);

6)UPDATE students SET Points = 500 WHERE name = "Basma"

7)UPDATE students SET Points = 150 WHERE name = "Alex"

part 2:

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
)


INSERT INTO graduates(name,Age,Gender,Points)
 SELECT name,Age,Gender,Points FROM students
 WHERE students.Name="Layal";


DELETE FROM students
WHERE students.name = "Layal"

Joins: 


CREATE TABLE compEmp 
as SELECT employees.name,employees.Company,companies.Date
FROM employees INNER JOIN companies
on employees.Company = companies.name;


SELECT name
FROM compEmp
WHERE date<2000

SELECT Company
FROM employees
WHERE Role="Graphic Designer"

Count and filter: 


SELECT * FROM students
WHERE Points = (SELECT max(points) FROM students)

SELECT avg(Points) FROM students

SELECT count(name) from students
WHERE Points = 500;

SELECT name FROM students
WHERE name like '%s%'

SELECT * FROM students
ORDER by Points desc

