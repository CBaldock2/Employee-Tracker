DROP DATABASE IF EXISTS work_db;
CREATE DATABASE work_db;

USE work_db;

CREATE TABLE department (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE role (
    job_title VARCHAR(255) NOT NULL PRIMARY KEY,
    role_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(255),
    salary INT NOT NULL,
    FOREIGN KEY (dept_name)
    REFERENCES department(dept_name)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    emp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    job_title VARCHAR(255),
    dept_name VARCHAR(255),
    salary INT NOT NULL,
    manager_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (job_title)
    REFERENCES role(job_title)
    ON DELETE SET NULL,
    FOREIGN KEY (dept_name)
    REFERENCES department(dept_name)
    ON DELETE SET NULL
);