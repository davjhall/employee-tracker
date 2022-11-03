USE 'employee_db';

INSERT INTO department (name)
VALUES ('Sales'), ('IT'), ('Accounting'), ('Security');

INSERT INTO role (title, salary, department_id)
VALUES 
('Salesman', 50000.00, 1),          //1
('Sales Manager', 150000.00, 1),       //2
('Software Engineer', 150000.00, 2),    //3
('CTO', 500000.00, 2),                  //4
('Accountant', 50000.00, 3),            //5
('Accounting Controller', 500000.00, 3 ), //6
('Security Guard', 30000.00, 4),        //7
('Security Manager', 250000.00, 4);         //8

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
('David', 'Hall', 4, null),
('Trinh', 'Nguyen', 3, 1),
('Sandra', 'Williams',6, 1),
('Wille', 'Urpp', 7, 3),
('Winnie', 'Till', 3, 1)



