INSERT INTO department (name)
VALUES  ('Legal'),
        ('Upper Level'),
        ('Supply'),
        ('Support'),
        ('Marketing');

INSERT INTO role (title, salary, department_id)
VALUES  ('Lawyer', 120000, 1),
        ('Supply Associate', 55000, 3),
        ('Marketing Analyst', 60000, 5),
        ('Customer Service', 50000, 4),
        ('Manager', 200000, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ('Bill', 'Ding', 1, 1),
        ('Jo', 'King', 2, 2),
        ('Stan', 'Still', 3, 3),
        ('Ema', 'Lee', 2, 2),
        ('Willie', 'Leak', 4, 4),
        ('David', 'Pitts', 4, 4),   


