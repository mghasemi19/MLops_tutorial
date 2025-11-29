#CREATE DATABASE student_test
#DROP DATABASE student_test;
#SHOW DATABASES;
#USE student_db;
SELECT database();

/*
SELECT DISTINCT(job_title_short)
FROM job_postings_fact;

SELECT * FROM job_postings_fact;

SELECT * FROM job_postings_fact
WHERE job_title_short='Data Analyst'
OR salary_year_avg > 90000
ORDER BY salary_year_avg DESC;

SELECT * FROM job_postings_fact
WHERE job_location IN ('New York, NY', 'Belarus');

SELECT * FROM job_postings_fact
WHERE 
	job_location IN ('Boston, MA', 'Anywhere')
AND
	(job_title_short = 'Data Analyst' AND salary_year_avg > 100000)
OR
	(job_title_short = 'Business Analyst' AND salary_year_avg > 70000);

SELECT job_title AS job,
	job_location AS location,
    salary_year_avg AS salary
FROM  job_postings_fact
WHERE (job LIKE '%Data%' OR job LIKE '%Business%')
AND job LIKE '%Analyst%' AND
job NOT LIKE '%Senior%'

ALTER TABLE Customers DROP country;
SELECT first_name, age FROM Customers;
ALTER TABLE Customers CHANGE age Age INT;
ALTER TABLE Customers RENAME COLUMN age TO Age;
ALTER TABLE Customers ADD country VARCHAR(20);
UPDATE Customers SET country="IRN" WHERE customer_id=1;
SELECT * FROM Customers;

SELECT item, COUNT(*) FROM Orders GROUP BY item 
HAVING COUNT(*) > 2 ;
SELECT * FROM Orders ORDER BY amount DESC;

SELECT first_name FROM Customers
WHERE Age = (SELECT Age FROM Customers WHERE first_name = 'David') AND
first_name NOT LIKE '%David%';

SELECT first_name AS Name FROM Customers
WHERE customer_id IN (SELECT customer_id FROM Orders WHERE amount >= 400) ;

SELECT first_name AS Name FROM Customers
WHERE customer_id=1 
UNION ALL
SELECT item FROM Orders WHERE customer_id=1 ;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Customers;
*/
SELECT first_name, Age,
    CASE 
    	--WHEN Age > 25 THEN 'Senior'
        WHEN Age > 27 AND first_name='Betty' THEN 'Mid'
		WHEN Age > 27 THEN 'Senior'
        ELSE 'Junior'
    END AS employee_category
FROM Customers;


