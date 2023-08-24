const inquirer = require('inquirer');
const mysql = require('mysql2');
const table = require('console.table');

const art = require('asciiart-logo');
require('dotenv').config();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

const questions = [
    {
        type: 'list',
        name: 'action',
        message: 'What would you like to do?',
        choices: [
            'View Departments',
            'Exit'
        ]
    }
]

function init() {
    inquirer.prompt(questions).then((answer)=> {
        if (answer.action === 'View Departments') {
            viewDepartments();
        } else if (answer.action === 'Exit') {
            process.exit();
        }
    })
}

function viewDepartments() {
    console.log('Loading Departments...')
    db.query('SELECT * FROM department;', (err, res)=> {
        console.table(res);
        init();
    })
}


init();