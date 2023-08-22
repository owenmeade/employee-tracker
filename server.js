const inquirer = require('inquirer');
const mysql = require('mysql2');
const table = require('console.table');

require('dotenv').config();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});