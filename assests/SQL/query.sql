SELECT *
FROM role
JOIN department 
ON role.department = department.dept_name;


SELECT * 
FROM employee
JOIN role
on employee.job_title = role.title;