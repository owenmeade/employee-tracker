DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;
USE employees_db;

CREATE TABLE department (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(30) NOT NULL,
);
CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES department(id) ON DELETE CASCADE,
);
CREATE TABLE employee (
    id PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id) ON UPDATE NO ACTION,
);