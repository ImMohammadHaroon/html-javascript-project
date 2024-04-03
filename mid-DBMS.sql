CREATE DATABASE employees;
USE employees;
CREATE TABLE  employees_details(
name VARCHAR(20),
id INT PRIMARY KEY,
dpt VARCHAR(20),
cnic VARCHAR(15) UNIQUE,
cgpa FLOAT
);
CREATE TABLE finance(
id INT,
salary INT
);
INSERT INTO employees_details (name,id,dpt,cnic,cgpa) 
VALUES 
("devowl",1,"CS" ,3120551520341,3.5),
("Adnan",2,"CS" ,3120551527641,3.7),
("Adam",3,"PS" ,31205515270,2.5);
INSERT INTO finance (id,salary)
VALUES 
(1,300),
(2,500),
(3,600),
(4,700);
DROP DATABASE employees;
DROP TABLE employees_details;
SELECT * FROM employees_details;
SELECT cnic,dpt FROM employees_details WHERE name = "Adnan";
SELECT * FROM employees_details WHERE cgpa = 3.5;
SELECT employees_details.cgpa, finance.salary FROM 
employees_details JOIN finance ON employees_details.id = finance.id 
WHERE name = "devowl";