use final

set IDENTITY_INSERT customer ON;
set IDENTITY_INSERT customer_account ON;
set IDENTITY_INSERT employee ON;
set IDENTITY_INSERT employee_account ON;
set IDENTITY_INSERT employee_personals ON;
set IDENTITY_INSERT employee_wages ON;
set IDENTITY_INSERT store ON;
set IDENTITY_INSERT store_data ON;
set IDENTITY_INSERT invoice ON;
set IDENTITY_INSERT invoice_data ON;

insert into customer
(customer_id, first_name, last_name, email)
values
(1, 'Eric', 'Dee', 'email1@cust.com'),
(2, 'Tim', 'Mola', 'email2@cust.com'),
(3, 'Sam', 'Dif', 'email3@cust.com'),
(4, 'Gretta', 'Swon', 'email4@cust.com'),
(5, 'Linda', 'Darp', 'email5@cust.com'),
(6, 'Lue', 'Luke', 'email6@cust.com'),
(7, 'Ahab', 'Simole', 'email7@cust.com'),
(8, 'John', 'Deere', 'email8@cust.com'),
(9, 'Don', 'Fromat', 'email9@cust.com'),
(10, 'Wayne', 'Simpleton', 'email10@cust.com'),
(11, 'Bill', 'Tinnel', 'email11@cust.com'),
(12, 'Sally', 'Tinnel', 'email12@cust.com')

insert into customer_account
(customer_id, latestpost, latestpost_date)
values
(1, 'Social post 1', '2021-01-01'),
(2, 'Social post 2', '2021-01-01'),
(3, 'Social post 3', '2021-01-01'),
(4, 'Social post 4', '2021-01-01'),
(5, 'Social post 5', '2021-01-01'),
(6, 'Social post 6', '2021-01-01'),
(7, 'Social post 7', '2021-01-01'),
(8, 'Social post 8', '2021-01-01'),
(9, 'Social post 9', '2021-01-01'),
(10, 'Social post 10', '2021-01-01')

insert into employee
(first_name, last_name, email)
values
('Liam', 'Noah', 'email1@employee.com'),
('Oliver', 'Elijah', 'email2@employee.com'),
('William', 'James', 'email3@employee.com'),
('Benjamin', 'Lucas', 'email4@employee.com'),
('Orme', 'Ivan', 'email5@employee.com'),
('Bassel', 'Hayden', 'email6@employee.com'),
('Logan', 'Ollie', 'email7@employee.com'),
('Walker', 'Wyatt', 'email8@employee.com'),
('Everet', 'Hugo', 'email9@employee.com'),
('Peak', 'Puma', 'email10@employee.com'),
('Warren', 'Arbor', 'email11@employee.com'),
('Dale', 'Fox', 'email12@employee.com')

insert into employee_account
(employee_id, latestpost, latestpost_date)
values
(1, 'Hey guys', '2021-01-01'),
(2, 'Howdy', '2021-01-01'),
(3, 'Hello world', '2021-01-01'),
(4, 'Whats up', '2021-01-01'),
(5, 'New post', '2021-01-01'),
(6, 'First post', '2021-01-01'),
(7, 'Hello!', '2021-01-01'),
(8, 'Hi.', '2021-01-01'),
(9, 'hi', '2021-01-01'),
(10, 'Yo!', '2021-01-01')

insert into employee_personals
(last_name, employee_id, birthdate)
values
('Noah', 1, '2021-01-01'),
('Elijah', 2, '2021-01-02'),
('James', 3, '2021-01-03'),
('Lucas', 4, '2021-01-04'),
('Ivan', 5, '2021-01-05'),
('Hayden', 6, '2021-01-06'),
('Ollie', 7, '2021-01-07'),
('Wyatt', 8, '2021-01-08'),
('Hugo', 9, '2021-01-09'),
('Puma', 10, '2021-01-10')

insert into employee_wages
(last_name, employee_id, currentwage)
values
('Noah', 1, 12.00),
('Elijah', 2, 13.40),
('James', 3, 12.00),
('Lucas', 4, 12.00),
('Ivan', 5, 12.00),
('Hayden', 6, 12.00),
('Ollie', 7, 15.00),
('Wyatt', 8, 14.00),
('Hugo', 9, 14.00),
('Puma', 10, 14.00)

insert into store
(store_name, store_state, store_region)
values
('S1', 'WA', 3),
('S2', 'WA', 3),
('S3', 'WA', 3),
('S4', 'WA', 3),
('S5', 'WA', 3),
('S6', 'WA', 4),
('S7', 'WA', 5),
('S8', 'WA', 2),
('S9', 'WA', 1),
('S10', 'WA', 4)

insert into store_data
(store_id, store_address, open_date)
values
(1, '11 N St, Harrisburg WA, 55032', '2021-01-01'),
(2, '12 N St, Harrisburg WA, 55032', '2021-01-02'),
(3, '13 N St, Harrisburg WA, 55032', '2021-01-03'),
(4, '14 N St, Harrisburg WA, 55032', '2021-01-04'),
(5, '21 N St, Harrisburg WA, 55032', '2021-01-05'),
(6, '22 N St, Harrisburg WA, 55032', '2021-01-06'),
(7, '33 N St, Harrisburg WA, 55032', '2021-01-07'),
(8, '44 N St, Harrisburg WA, 55032', '2021-01-08'),
(9, '55 N St, Harrisburg WA, 55032', '2021-01-09'),
(10, '66 N St, Harrisburg WA, 55032', '2021-01-10')

insert into invoice
(customer_id, employee_id, store_id)
values
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10)

insert into invoice_data
(cost, buy_date, expire_date)
values
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02'),
(10.00, '2021-01-01', '2021-02-02')

go