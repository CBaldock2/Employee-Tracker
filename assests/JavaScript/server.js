const inquirer = require('inquirer');
const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'Saratoga728!',
        database: 'work_db'
    },
    console.log(`Connected to the work_db database.`)
)


const firstTask = [
    {
        type: 'list',
        message: 'What would you like to do?',
        name: 'firstTask',
        choices: ['View all departments', 'View all roles', 'View all employees', 'Add a department', 'Add a role', 'Add an employee', 'Update an employee role', 'Quit']
    }
];

const addDept = [
    {
        type: 'input',
        message: 'What depatrment would you like to add?',
        name: 'newDeptName',
        validate: (value) => { if (value) { return true } else { return 'You need to add a department' } }
    }
];

const addRole = [
    {
        type: 'input',
        message: 'What role would you like to add?',
        name: 'newRoleName',
        validate: (value) => { if (value) { return true } else { return 'You need to add a role' } }
    },
    {
        type: 'input',
        message: 'What is the salary for this role?',
        name: 'newSal',
        validate: (value) => { if (value) { return true } else { return 'You need to add a salary' } }
    },
    {
        type: 'input',
        message: 'What department is this role in?',
        name: 'newRoleDept'
    }
];

const addEmp = [
    {
        type: 'input',
        message: 'What is the employees FIRST name?',
        name: 'newFirName',
        validate: (value) => { if (value) { return true } else { return 'You need to add a department' } }
    },
    {
        type: 'input',
        message: 'What is the employees LAST name?',
        name: 'newLaName',
        validate: (value) => { if (value) { return true } else { return 'You need to add a role' } }
    },
    {
        type: 'input',
        message: 'What is the employees role?',
        name: 'newEmpRole',
        validate: (value) => { if (value) { return true } else { return 'You need to add a salary' } }
    },
    {
        type: 'input',
        message: 'Who is the employees manager?',
        name: 'empManager',
        validate: (value) => { if (value) { return true } else { return 'You need to add a department' } }
    }
];


function init() {
    inquirer.prompt(firstTask).then((answers) => {
        const choice = answers.firstTask;

        switch (choice) {
            case 'View all departments':
                db.query('SELECT * FROM department', function (err, results) {
                    if (err) {
                        throw err;
                    }
                    console.log(results);
                    init();
                });
                break;
            case 'View all roles':
                db.query('SELECT * FROM role', function (err, results) {
                    if (err) {
                        throw err;
                    }
                    console.log(results);
                    init();
                });
                break;
            case 'View all employees':
                db.query('SELECT * FROM employee', function (err, results) {
                    if (err) {
                        throw err;
                    }
                    console.log(results);
                    init();
                });
                break;
            case 'Add a department':
                inquirer.prompt(addDept).then((answers) => {
                    db.query('INSERT INTO department SET ?;', { dept_name: answers.newDeptName }, function (err, results) {
                        if (err) {
                            throw err;
                        }
                        console.log('Department added successfully!');
                        init();
                    });
                });
                break;
            case 'Add a role':
                inquirer.prompt(addRole).then((answers) => {
                    db.query('INSERT INTO role SET ?, ?, ?', 
                    [
                        { title: answers.newRoleName }, 
                        { department: answers.newRoleDept }, 
                        { salary: answers.newSal }
                    ], 
                    function (err, results) {
                        if (err) {
                            throw err;
                        }
                        console.log('Role successfully added!');
                        init();
                    });
                });
                break;
            case 'Add an employee':
                inquirer.prompt(addEmp).then((answers) => {
                    db.query('INSERT INTO employee SET ?, ?, ?, ?', 
                    [
                        { first_name: answers.newFirName },
                        { last_name: answers.newLaName },
                        { job_title: answers.newEmpRole },
                        { manager_name: answers.empManager }
                    ], 
                    function (err, results) {
                        if (err) {
                            throw err;
                        }
                        console.log('Employee added successfully');
                        init();
                    });
                });
                break;
            case 'Update an employee role':
                db.query('SELECT id, first_name, last_name FROM employee', function (err, results) {
                    if (err) throw err;
                    const employeeList = results.map(employee => ({
                        name: `${employee.first_name} ${employee.last_name}`,
                        value: employee.id
                    }));
                    db.query('SELECT * FROM role', function (err, results) {
                        if (err) throw err;
                        const roleList = results.map(role => ({
                            name: `${role.title}`,
                            value: role.role_id
                        }));
                        inquirer.prompt([
                            {
                                type: 'list',
                                message: `Which employee's role would you like to update?`,
                                name: 'employeeId',
                                choices: employeeList
                            },
                            {
                                type: 'list',
                                message: 'What is the new role?',
                                name: 'roleId',
                                choices: roleList
                            }
                        ]).then((answer) => {
                            db.query(`UPDATE employee SET job_title = (SELECT title FROM role WHERE role.role_id = ${answer.roleId}) WHERE id = ${answer.employeeId}`, function (err, results) {
                                if (err) throw err;
                                console.log('Employee role updated successfully!');
                                init();
                            });
                        });
                    });
                });
                break;
            case 'Quit':
                console.log("Quitting program ...");
                process.exit();
            default:
                console.log('Invalid choice!')
        }

    });
};

init();