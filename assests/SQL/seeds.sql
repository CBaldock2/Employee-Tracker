INSERT INTO department (dept_id, dept_name)
VALUES  (500, 'Legal'),
        (100, 'Supply'),
        (200, 'Support'),
        (300, 'Marketing');

INSERT INTO role (job_title, role_id, dept_name, salary)
VALUES  ('Lawyer', 50012, 'Legal', 85000 ),
        ('Supply Associate', 10055, 'Supply', 55000),
        ('Marketing Analyst', 30094, 'Marketing', 58000),
        ('Customer Service', 20068, 'Support', 45000);

INSERT INTO employee (first_name, last_name, job_title, dept_name, salary, manager_name)
VALUES  ('Bill', 'Ding', 'Marketing Analyst', 'Marketing', 58000, 'Barb E. Dahl'),
        ('Jo', 'King', 'Supply Associate', 'Supply', 55000, 'Joe Kerr'),
        ('Stan', 'Still', 'Lawyer', 'Legal', 85000, 'Sue Flay'),
        ('Ema', 'Lee', 'Supply Associate', 'Supply', 55000, 'Joe Kerr'),
        ('Willie', 'Leak', 'Customer Service', 'Support', 45000, 'Won Tee'),
        ('David', 'Pitts', 'Customer Service', 'Support', 45000, 'Won Tee');
