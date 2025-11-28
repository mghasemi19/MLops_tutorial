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
*/

