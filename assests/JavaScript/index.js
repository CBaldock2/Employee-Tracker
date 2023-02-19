const inquirer = require('inquirer');


const firstTask = [
    {
        type: 'list',
        message: 'What would you like to do?',
        name: 'firstTask',
        choices: ['View all departments', 'View all roles', 'View all employees', 'Add a department', 'Add a role', 'Add an employee', "Update an employee role"]
    }
]

const addDept = [
    {
        type: 'input',
        message: 'What depatrment would you like to add?',
        name: 'newDeptName',
        validate: (value) => { if (value) { return true } else { return 'You need to add a department' } }
    }
]

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
        message: 'What depatrment is this role in?',
        name: 'newRoleDept',
        validate: (value) => { if (value) { return true } else { return 'You need to add a department' } }
    }
]

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
        name: 'newEmpManager',
        validate: (value) => { if (value) { return true } else { return 'You need to add a department' } }
    }
]