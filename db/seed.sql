USE employee_db;

INSERT INTO department (name)
VALUES ('Sales'), ('IT'), ('Accounting'), ('Legal');

INSERT INTO roles (title, salary, department_id)
VALUES 
('Salesman', 50000.00, 1),          
('Sales Manager', 80000.00, 1),       
('Software Engineer', 150000.00, 2),    
('Lead Engineer', 200000.00, 2),                 
('Accountant', 50000.00, 3),            
('Accounting Manager', 98000.00, 3 ), 
('Lawyer', 200000.00, 4),            
('Legal Team Lead ', 250000.00, 4);         

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
('David', 'Hall', 4, null),
('Trinh', 'Nguyen', 3, 1),
('Sandra', 'Williams',6, null),
('Wille', 'Urpp', 7, 6),
('Winnie', 'Till', 5, 3),
('Earnie', 'Bash', 8, null);



