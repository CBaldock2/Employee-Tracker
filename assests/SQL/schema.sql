DROP DATABASE IF EXISTS work_db;
CREATE DATABASE work_db;

USE work_db;

CREATE TABLE department (
    dept_id INT NOT NULL PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE role (
    job_title VARCHAR(255) NOT NULL PRIMARY KEY,
    role_id INT NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    salary INT NOT NULL
);

CREATE TABLE employee (
    emp_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    salary INT NOT NULL,
    manager_name VARCHAR(255) NOT NULL
);