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

--Count number of employees in each department --
select department, count (*) as employee_count
from employees_hr
group by department;

--Calculate the average age for each department --
select department, avg(age) as average_age
from employees_hr
group by department;

--Count number of married and unmarried employees in the company --
select marital_status, count(*) as marital_cunt
from employees_hr
group by marital_status;

--The most common job roles in each department --
select department, job_role, count(*) as role_count
from employees_hr
group by department, job_role
order by department asc, job_role asc;

--Calculate the average job satisfaction for each educational level--
select education, avg(job_satisfaction) as avg_satisfaction
from employees_hr
group by education;

--Identify the departments with the highest and lowest average job satisfaction --
select department, avg(job_satisfaction) as avg_satisfaction
from employees_hr
group by department
order by avg_satisfaction desc, department;

--Find the education level with the highest average job satisfaction among employees who travel frequently--
select education, business_travel, AVG(job_satisfaction) AS average_satisfaction
FROM employees_hr
WHERE business_travel = 'Travel_Frequently'
GROUP BY education, business_travel
ORDER BY average_satisfaction DESC;

--Marital status count by gender
select gender, marital_status, count(marital_status) as numb
from employees_hr 
group by gender, marital_status
order by gender, marital_status desc;

