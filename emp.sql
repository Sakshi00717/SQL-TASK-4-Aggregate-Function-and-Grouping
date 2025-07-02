CREATE DATABASE company;
USE company;

CREATE TABLE emp (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    age INT
);


INSERT INTO emp(name, department, salary, age) VALUES
('Alice', 'HR', 50000, 30),
('Bob', 'HR', 55000, 32),
('Charlie', 'IT', 70000, 28),
('David', 'IT', 72000, 35),
('Eva', 'Sales', 45000, 25),
('Frank', 'Sales', 48000, 29),
('Grace', 'Sales', 46000, 31),
('Helen', 'IT', 75000, 34),
('Ian', 'HR', 53000, 26);



-- SUM FUNCTION

SELECT SUM(salary) AS total_salary FROM emp;





-- AVG FUNCTION 

SELECT AVG(salary) AS average_salary FROM emp;



-- COUNT FUNCTION

SELECT COUNT(*) AS total_employees FROM emp;



-- GROUPING BY GROUP BY


-- Average Salary by Department

SELECT department, AVG(salary) AS avg_salary
FROM emp
GROUP BY department;



-- Count of Employees by Department

SELECT department, COUNT(*) AS employee_count
FROM emp
GROUP BY department;




-- Total Salary by Department

SELECT department, SUM(salary) AS total_salary
FROM emp
GROUP BY department;


-- Filtering Groups with HAVING


SELECT department, AVG(salary) AS avg_salary
FROM emp
GROUP BY department
HAVING AVG(salary) > 60000;

