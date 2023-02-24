INSERT INTO department (name)
VALUES  ('Legal'),
        ('Supply'),
        ('Support'),
        ('Marketing');

INSERT INTO role (title, salary, department_id)
VALUES  ('Supply Manager', 125000, 2),
        ('Marketing Manager', 100000, 4),
        ('Support Manager', 125000, 3),
        ('Lawyer', 120000, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ('Bill', 'Ding', 1, NULL),
        ('Jo', 'King', 2, NULL),
        ('Stan', 'Still', 3, NULL),
        ('David', 'Pitts', 4, NULL); 


