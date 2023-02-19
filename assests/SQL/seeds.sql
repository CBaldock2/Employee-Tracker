INSERT INTO department (dept_id, dept_name)
VALUES  (1, 'Legal'),
        (2, 'Supply'),
        (3, 'Support'),
        (4, 'Marketing');

INSERT INTO role (job_title, role_id, dept_name, salary)
VALUES  ('Lawyer', 101, 'Legal', 85000 ),
        ('Supply Associate', 201, 'Supply', 55000),
        ('Marketing Analyst', 401, 'Marketing', 58000),
        ('Customer Service', 301, 'Support', 45000);

INSERT INTO employee (emp_id, first_name, last_name, job_title, dept_name, salary, manager_name)
VALUES  (40113, 'Bill', 'Ding', 'Marketing Analyst', 'Marketing', 60000, 'Barb E. Dahl'),
        (20174, 'Jo', 'King', 'Supply Associate', 'Supply', 55000, 'Joe Kerr'),
        (10157, 'Stan', 'Still', 'Lawyer', 'Legal', 92000, 'Sue Flay'),
        (20165, 'Ema', 'Lee', 'Supply Associate', 'Supply', 57500, 'Joe Kerr'),
        (30181, 'Willie', 'Leak', 'Customer Service', 'Support', 45000, 'Won Tee'),
        (30122, 'David', 'Pitts', 'Customer Service', 'Support', 45000, 'Won Tee');
