const inquirer = require('inquirer');


const questions = [
    {
        type: 'list',
        message: 'What would you like to do?',
        name: 'firstTask',
        choices: ['View all departments', 'View all roles', 'View all employees', 'Add a department', 'Add a role', 'Add an employee', "Update an employee role"]
    }
]