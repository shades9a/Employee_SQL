CREATE TABLE employee(
	emp_no INT,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR(30) NOT NULL
);


CREATE TABLE department(
	dept_no VARCHAR(5),
	dept_name VARCHAR(30)

);


CREATE TABLE manager(
	dep_no VARCHAR(5) NOT NULL,
	emp_no INT
);


CREATE TABLE employee_no(
	emp_no INT,
	dep_no VARCHAR(5) NOT NULL

);


CREATE TABLE salary(
	emp_no INT,
	salary INT
);

--1
SELECT e.emp_no,e.first_name,e.last_name,e.sex,e.hire_date,p.salary
FROM employee e
JOIN salary p
ON (e.emp_no = p.emp_no)
--2
SELECT e.first_name,e.last_name,e.hire_date
FROM employee e
WHERE e.hire_date >= '1/1/1986';
--3
SELECT e.emp_no,e.first_name,e.last_name,d.dept_no,d.dept_name
FROM employee e,department d
--4
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employee e,department d
--5
SELECT e.first_name,e.last_name,e.sex
FROM employee e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE '%B%';
--6
SELECT e.emp_no,e.last_name,e.first_name,d.dept_no
FROM employee e,department d
WHERE d.dept_no = 'd007';
--7
SELECT e.emp_no,e.last_name,e.first_name,d.dept_no
FROM employee e,department d
WHERE d.dept_no = 'd005' OR d.dept_no = 'd007';
--8
SELECT e.last_name, COUNT(e.last_name)AS Frequency
FROM employee e
GROUP BY e.last_name
ORDER BY Frequency