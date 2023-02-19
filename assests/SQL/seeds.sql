INSERT INTO department (dept_name)
VALUES  ('Legal'),
        ('Supply'),
        ('Support'),
        ('Marketing');

INSERT INTO role (job_title, dept_name, salary)
VALUES  ('Lawyer', 'Legal', 85000 ),
        ('Supply Associate', 'Supply', 55000),
        ('Marketing Analyst', 'Marketing', 58000),
        ('Customer Service', 'Support', 45000);

INSERT INTO employee (first_name, last_name, job_title, dept_name, salary, manager_name)
VALUES  ('Bill', 'Ding', 'Marketing Analyst', 'Marketing', 58000, 'Barb E. Dahl'),
        ('Jo', 'King', 'Supply Associate', 'Supply', 55000, 'Joe Kerr'),
        ('Stan', 'Still', 'Lawyer', 'Legal', 85000, 'Sue Flay'),
        ('Ema', 'Lee', 'Supply Associate', 'Supply', 5500, 'Joe Kerr'),
        ('Willie', 'Leak', 'Customer Service', 'Support', 45000, 'Won Tee'),
        ('David', 'Pitts', 'Customer Service', 'Support', 45000, 'Won Tee');
