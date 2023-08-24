INSERT INTO department (department_name)
VALUES ('CHEF'),('BUSSER'),('MANAGER'),('DISHWASHER');

INSERT INTO role (title, salary, dep_id)
VALUES ('Head Chef', 30000, 1),('Bus boy', 10000, 2),('Head Server', 25000, 3),('Cleaner', 17500, 4);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUES ('Paul', 'Walker', NULL, 1),('Johm', 'Pork', 3, 2),('Sarah', 'Oneal', NULL, 3),('Dennis', 'Rodman', 3, 4);