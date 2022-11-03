const inquirer = require('inquirer');
const mysql = require('mysql2');
require(console.table);

const answers = require('./answers')

// we need a Databse


// we need a schema (creates tables)


// we need to connect to our Database
const db = mysql.createConnection({
    host: 'localhost',
    user: '',
    password: '',
    database: 'employee_db'
});


function start() {
    
    inquirer.prompt([
        {
            type: `list`,
            message: `What would you like to do?`,
            name: `title`,
            choices: ["View all emplyee", "Update", "delete emplyess"]
        },
        {
            type: 'input',
            message: "What is your name?",
            name: "firstName"
        }
    ]).then((response) =>{
        console.log(response);  // { title: "Update", firstName:'Sarah'  }

        // we are making a decision
        if(response.title == "View all emplyee") {
            // redirect to another function
            viewEmployees();
        }
        if(response.title == "Update") {
            // redirect to another function
            updateEmployee();
        }

        
        //answers(response);
        /* response.confirm === response.input
        ? console.log('Success!')
        : console.log('')
        */
    });
}

function viewEmployees() {
    
    let sqlQuery = "SELECT * FROM employee";
    // we want to query the database (this is an asynchrosous method)
    db.query(sqlQuery, function(error, data) {
        // check for an erro from the daabase
        if(error) {
            console.log("Something went wrong");
        }
        console.log(data);
        console.log("************")
        console.table(data);


        // now wherer do we go?
       start()
    })
    
    //start()
}


// invoke the function
start();