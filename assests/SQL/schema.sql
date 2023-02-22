DROP DATABASE IF EXISTS work_db;
CREATE DATABASE work_db;

USE work_db;

CREATE TABLE department (
    dept_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE role (
    title VARCHAR(255) NOT NULL UNIQUE,
    role_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    department VARCHAR(255) UNIQUE,
    salary INT NOT NULL,
    FOREIGN KEY (department)
    REFERENCES department(dept_name)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    job_title VARCHAR(255),
    department VARCHAR(255),
    salary INT,
    manager_name VARCHAR(255),
    FOREIGN KEY (job_title)
    REFERENCES role(title)
    ON DELETE SET NULL
);