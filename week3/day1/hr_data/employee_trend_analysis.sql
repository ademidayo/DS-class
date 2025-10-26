CREATE TABLE employees_hr (
    emp_no              INT PRIMARY KEY,
    gender              TEXT,
    marital_status      TEXT,
    age_band            TEXT,           
    age                 SMALLINT,
    department          TEXT,
    education           TEXT,           
    education_field     TEXT,
    job_role            TEXT,
    business_travel     TEXT,
    employee_count      SMALLINT,
    attrition           TEXT,           
    attrition_label     TEXT,          
    job_satisfaction    SMALLINT,
    active_employee     SMALLINT 
	);

	select * from employees_hr;
/*
structure of any sql queries follows this fundamental way:
select
from 
where, ***etc***
group by
order by
limit
*/
	-- count number of employees in each department --
select department, count (*) as employee_count
from employees_hr
group by department;

-- calculate the average age for each department --
select department, avg(age) as average_age
from employees_hr
group by department

-- count number of married and unmarried employees in the company --
select marital_status, count(*) as marital_cunt
from employees_hr
group by marital_status

-- the most common job roles in each department ---
select department, job_role, count(*) as role_count
from employees_hr
group by department, job_role
order by department, job_role
desc;

-- calculate the average job satisfaction for each educational level--
select education, avg(job_satisfaction) as avg_satisfaction
from employees_hr
group by education;


-- identify the departments with the highest and lowest average job satisfaction --
select department, avg(job_satisfaction) as avg_satisfaction
from employees_hr
group by department
order by avg_satisfaction desc, department;

-- find the education level with the highest average job satisfaction among employees who travel frequently--
select education, AVG(job_satisfaction) AS average_satisfaction
FROM employees_hr
WHERE business_travel = 'Travel_Frequently'
GROUP BY education
ORDER BY average_satisfaction DESC;


select * from employees_hr



