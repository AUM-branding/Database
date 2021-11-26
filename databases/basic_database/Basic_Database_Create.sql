create database final;
go

use final

create table customer
(
	customer_id int identity(1,1) not null, constraint pk_customer primary key (customer_id),
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null,
)

create table customer_account
(
	account_id int identity(1,1) not null, constraint pk_customer_account primary key (account_id),
	customer_id int not null, constraint fk_customer_id foreign key(customer_id) references customer(customer_id),
	latestpost varchar(50) not null,
	latestpost_date date not null,
)

create table employee
(
	employee_id int identity(1,1) not null, constraint pk_employee primary key (employee_id),
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null,
)

create table employee_account
(
	account_id int identity(1,1) not null, constraint pk_employee_account primary key (account_id),
	employee_id int not null, constraint fk_employee_id foreign key(employee_id) references employee(employee_id),
	latestpost varchar(50) not null,
	latestpost_date date not null,
)

create table employee_personals
(
	personals_id int identity(1,1) not null, constraint pk_employee_personals primary key (employee_id, last_name),
	last_name nvarchar(50) not null,
	employee_id int not null, constraint fk_employee_personals foreign key(employee_id) references employee(employee_id),
	birthdate date not null,
)

create table employee_wages
(
	wage_id int identity(1,1) not null, constraint pk_employee_wages primary key (wage_id),
	last_name nvarchar(50) not null,
	employee_id int not null, constraint fk_wages foreign key(employee_id) references employee(employee_id),
	currentwage decimal(7,2),
)

create table store
(
	store_id int identity(1,1) not null, constraint pk_store_id primary key (store_id),
	store_name varchar(50) not null,
	store_state nvarchar(2),
	store_region int not null,	
)

create table store_data
(
	store_data_id int identity(1,1) not null, constraint pk_store_data primary key (store_data_id),
	store_id int not null, constraint fk_store_id foreign key(store_id) references store(store_id),
	store_address varchar(50) not null,
	open_date date not null,
)

create table invoice
(
	invoice_number int identity(1,1) not null, constraint pk_invoice primary key (invoice_number),
	customer_id int not null, constraint fk_invoice_cust foreign key(customer_id) references customer(customer_id),
	employee_id int not null, constraint fk_invoice_empl foreign key(employee_id) references employee(employee_id),
	store_id int not null, constraint fk_invoice foreign key(store_id) references store(store_id),
)

create table invoice_data
(
	invoice_data_id int identity(1,1) not null, constraint pk_invoice_data primary key (invoice_data_id),
	cost decimal(7,2) not null,
	buy_date date not null,
	expire_date date not null,
)

go