INSERT INTO department (dept_name)
VALUES  ('Legal'),
        ('Supply'),
        ('Support'),
        ('Marketing');

INSERT INTO role (title, department, salary)
VALUES  ('Lawyer', 'Legal', 80000),
        ('Supply Associate', 'Supply', 55000),
        ('Marketing Analyst', 'Marketing', 60000),
        ('Customer Service', 'Support', 50000);

INSERT INTO employee (first_name, last_name, job_title, department, salary, manager_name)
VALUES  ('Bill', 'Ding', 'Marketing Analyst', 'Marketing', 60000, 'Barb E. Dahl'),
        ('Jo', 'King', 'Supply Associate', 'Supply', 55000, 'Joe Kerr'),
        ('Stan', 'Still', 'Lawyer', 'Legal', 95000, 'Sue Flay'),
        ('Ema', 'Lee', 'Supply Associate', 'Supply', 60000, 'Joe Kerr'),
        ('Willie', 'Leak', 'Customer Service', 'Support', 55000, 'Won Tee'),
        ('David', 'Pitts', 'Customer Service', 'Support', 50000, 'Won Tee');
