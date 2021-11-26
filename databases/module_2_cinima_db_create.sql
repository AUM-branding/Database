CREATE DATABASE Cinema
go

use Cinema

CREATE TABLE Movie_Attributes(
	Id int not null identity(1,1) primary key,
	Max_Theaters int not null,
	Opening int not null,
	Open_Theaters int not null,
	Lifetime_Gross decimal(10,2) null
);

CREATE TABLE Movie(
	Id int not null identity(1,1) primary key,
	Release_Date date not null,
	Distributor nvarchar(100) not null,
	Movie_Attributes_Id int not null,

	foreign key (Movie_Attributes_Id) references Movie_Attributes(Id)
);