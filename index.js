const inquirer = require('inquirer');
const mysql = require('mysql2');
const cTable = require('console.table');

// const answers = require('');



const db = mysql.createConnection({ // connects to our Database
    host: 'localhost',
    user: 'root',
    password: 'rootroot',
    database: 'employee_db'
});


function startQuestion() {
     
    inquirer.prompt([
        {
            type: `list`,
            message: `What would you like to do?`,
            name: `initialQ`,
            choices: ["View all Employees", "Add Employee", "Update Employee Role", "View All Roles", "Add Roles", "View All Departments", "Add Departments", "Quit"]
        },
        {
            type: 'input',
            message: "What is your employees' first name?",
            name: "first_name"
        }
    ]).then(response => {
        
      
        
        if(response.initialQ == "View all Employees") {
            
            viewEmployees();
        }
        if(response.initialQ == "View All Roles") {
            
            viewRoles();
        }
        if(response.initialQ == "View All Departments") {
            
            viewDepartments();
        }

        if(error) {
            console.log("Something went wrong");
        }
        
        
    });
}

function viewEmployees() {
    
    db.query("SELECT * FROM employees", function(error, data) {
       
        if(error) {
            console.log("Something went wrong");
        }

        startQuestion()
    })
    
    
}

function viewDepartments() {
    
    db.query("SELECT * FROM department", function(error, data) {
        
        if(error) {
            console.log("Something went wrong");
        }
        
        startQuestion()
    })
    

}

function viewRoles() {
    
    db.query("SELECT * FROM roles", function(error, data) {
    
        if(error) {
            console.log("Something went wrong");
        }

        startQuestion()
    })
    
}



startQuestion();



