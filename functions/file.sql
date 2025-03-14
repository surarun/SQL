select department_id, count(*) from hr.EMPLOYEES group by DEPARTMENT_ID;

select * from hr.EMPLOYEES;

-- This query calculates the average salary for employees in each department.
select DEPARTMENT_ID,avg(salary) from hr.EMPLOYEES group by DEPARTMENT_ID;

-- 3. Find the maximum and minimum salary in each department
select DEPARTMENT_ID,max(salary),min(salary) from hr.EMPLOYEES group by DEPARTMENT_ID;

-- 4. Find the total salary paid in each department
select DEPARTMENT_ID,sum(salary) from hr.EMPLOYEES group by DEPARTMENT_ID;

-- 5. Count the number of employees in each job role
select job_id, count(*) from hr.EMPLOYEES group by job_id order by 2 desc;

-- 6. Find the average salary for each job role
select job_id, avg(salary) from hr.EMPLOYEES group by job_id order by 2 desc;

-- 7. Find the maximum salary for each job role
select job_id, max(salary) from hr.EMPLOYEES group by job_id order by 2 desc;


-- 8. Find the minimum salary for each job role
select job_id, min(salary) from hr.EMPLOYEES group by job_id order by 2 desc;

-- 9. Find the total salary paid for each job role
select job_id, sum(salary) from hr.EMPLOYEES group by job_id order by 2 desc;

-- 10. Count the number of employees hired in each year
select extract(year from hire_date), count(*) from hr.employees group by extract(year from hire_date) order by 1;


-- 11. Find the total salary paid in each location
SELECT d.location_id, SUM(e.salary) AS total_salary
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
GROUP BY d.location_id;

-- 12. Find the number of employees in each manager's team
select d.manager_id,count(*) from hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
GROUP BY d.manager_id;

-- 13. Find the highest salary for each manager
SELECT manager_id, MAX(salary) AS maximum_salary
FROM hr.employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- 14. Find the average salary for each manager's team

select manager_id,avg(salary) from hr.employees
WHERE manager_id IS NOT NULL
 group by manager_id;

-- 15. Count the number of employees hired in each month of the year
select extract(month from hire_date), count(*) from hr.employees group by extract(month from hire_date) order by 1;

-- 16. Find the department with the highest total salary
select department_id from hr.employees where salary =
(select max(salary) from hr.employees);

-- 17. Find the job role with the highest average salary
select job_id from hr.employees where salary in 
(select avg(salary) from hr.employees);


-- 18. Find the number of employees in each city
SELECT l.city, COUNT(*) AS total_employees
FROM hr.employees e
inner JOIN hr.departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
GROUP BY l.city;

-- 19. Find the number of employees who have a commission, grouped by department
SELECT department_id, COUNT(*) AS employees_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;

-- 20. Find the sum of salaries for employees who have a commission, grouped by department
SELECT department_id, SUM(salary) AS total_salary_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;



