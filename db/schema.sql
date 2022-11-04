DROP DATABASE IF EXISTS 'employee_db';
CREATE DATABASE 'employee_db';

USE 'employee_db';

CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    names VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY department_id REFERENCES department(id)
);

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30)  NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    roles_id INT ,
    manager_id INT,
    FOREIGN KEY roles_id REFERENCES roles(id),
    FOREIGN KEY manager_id REFERENCES employees(id)
);
 