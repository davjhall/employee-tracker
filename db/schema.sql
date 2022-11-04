DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY , 
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) 
    REFERENCES department(id)
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30)  NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    roles_id INT NOT NULL ,
    manager_id INT NOT NULL,
    FOREIGN KEY (roles_id) 
    REFERENCES roles(id),
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);
 