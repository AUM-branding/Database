Use master
go

Alter database Olympics 
Set single_user with rollback immediate

go

Drop database if exists Olympics

go

Create database Olympics

go

Use Olympics

go

Create table Country
(
	Id varchar (3) not null, constraint Pk_country_id primary key (Id),
	Name varchar (50) not null,
	Population int not null,
	GDP decimal (23,14) null,
)

Create table City
(
	Id int identity (1,1) not null, constraint Pk_city_id primary key (Id),
	Country_code varchar (3) not null, constraint Fk_city_country_id foreign key (Country_code) references Country (Id),
	Name varchar (50) not null,
	Population int not null,
)

Create table Event_host_data
(
	Id int identity (1,1) not null, constraint Pk_event_host_id primary key (Id),
	Year smallint not null,
	City nvarchar (60) not null,
	Season nvarchar (10) not null
)

Create table Sport
(
	Id int identity (1,1) not null, constraint Pk_sport_id primary key (Id),
	Name varchar (16) not null unique,
	Team_limit int null,
	Description varchar (100) not null
)

Create table Team
(
	Id int identity (1,1) not null, constraint Pk_team_id primary key (Id),
	Sport_id int not null, constraint Fk_team_sport_id foreign key (Sport_id) references Sport (Id),
	Country_code varchar (3) not null, constraint Fk_team_country_id foreign key (Country_code) references Country (Id),
	Name varchar(45) not null
)

Create table Athlete
(
	Id int identity (1,1) not null, constraint Pk_athlete_id primary key (Id),
	Country_code varchar (3) not null, constraint Fk_athlete_country_id foreign key (Country_code) references Country (Id),
	Team_id int null, constraint Fk_athlete_team_id foreign key (Team_id) references Team (Id),
	Sports varchar (100) not null
)

Create table Coach
(
	Id int identity (1,1) not null, constraint Pk_coach_athlete_id primary key (Id),
	Country_code varchar (3) not null, constraint Fk_coach_country_id foreign key (Country_code) references Country (Id),
	Team_id int null, constraint Fk_coach_team_id foreign key (Team_id) references Team (Id),
	Sports varchar (100) not null
)

Create table Event
(
	Id int identity (1,1) not null, constraint Pk_event_id primary key (Id),
	Sport_id int not null, constraint Fk_event_sport_id foreign key (Sport_id) references Sport (Id),
	Name varchar (60) not null unique,
	Description nvarchar(100) not null
)

Create table Event_medalists
(
	Id int identity (1,1) not null, constraint Pk_event_medalists_id primary key (Id),
	Event_id int not null, constraint Fk_medalist_event_id foreign key (Event_id) references Event (Id),
	Athlete_id int not null, constraint Fk_event_medalists_athlete_id foreign key (Athlete_id) references Athlete (Id),
	Medal nvarchar (16) not null
)

Create table Person
(
	Id int identity (1,1) not null, constraint Pk_person_id primary key (Id),
	Athlete_only_id int null, constraint Fk_athlete_id foreign key (Athlete_only_id) references Athlete (Id),
	Coach_only_id int null, constraint Fk_coach_id foreign key (Coach_only_id) references Coach (Id),
	First_name varchar (25) not null,
	Last_name varchar(25) not null,
	Birthdate date not null,
)

go

--Insert into Country (Id, Name, Population, GDP)
--values
--('GRE', 'Greece', 10823732, 18002.2305776688),
--('FRA', 'France', 66808385, 36205.5681017036),
--('USA', 'United States', 321418820, 56115.7184261955),
--('GBR', 'United Kingdom', 65138232, 43875.9696143686),
--('SWE', 'Sweden', 9798871, 50579.6736486777),
--('BEL', 'Belgium', 11285721, 40324.0277657215),
--('NED', 'Netherlands', 16936520, 44299.768085383),
--('AFG', 'Afghanistan', 32526562, 594.323081219966),
--('GER', 'Germany', 81413145, 41313.3139945434),
--('FIN', 'Finland', 5482013, 42311.0362306446),
--('SUI', 'Switzerland', 8286976, 80945.0792194742)

--Insert into City (Country_code, Name, Population)
--values
--('GRE', 'Athens', 664046),
--('FRA', 'Paris', 2161000),
--('USA', 'St Louis', 308174),
--('GBR', 'London', 8982000),
--('SWE', 'Stockholm', 975551),
--('BEL', 'Antwerp', 498473),
--('NED', 'Amsterdam', 821752),
--('USA', 'Los Angeles', 3967000),
--('GER', 'Berlin', 3645000),
--('FIN', 'Helsinki', 631695),
--('FRA', 'Chamonix', 8906),
--('SUI', 'St.Moritz', 5233),
--('USA', 'Lake Placid', 2346),
--('GER', 'Garmisch', 26178)

--Insert into Event_host_data (Year, City, Season)
--values
--(1896, 'Athens', 'Summer'),
--(1900, 'Paris', 'Summer'),
--(1904, 'St Louis', 'Summer'),
--(1908, 'London', 'Summer'),
--(1912, 'Stockholm', 'Summer'),
--(1920, 'Antwerp', 'Summer'),
--(1924, 'Chamonix', 'Winter'),
--(1928, 'St.Moritz', 'Winter'),
--(1932, 'Lake Placid', 'Winter'),
--(1936, 'Garmisch', 'Winter')

--Insert into Sport (Name, Team_limit, Description)
--values
--('Swimming', 16, 'Participating athletes will compete against eachother in water relays of various lengths.'),
--('Athletics', NULL, 'Participating athletes will compete against eachother in land relays of various lengths, and types.'),
--('Archery', 16, 'Participating athletes will compete against eachother by shooting arrows through bows at targets. Each team consists of one man, and one woman.'),
--('Boxing', 2, 'Participating athletes will compete against eachother by fighting with gloves on and following specific rules.'),
--('Cycling', 16, 'Participating athletes will compete against eachother by racing around a track on bicycles.'),
--('Equestrian', NULL, 'Participating athletes will compete against eachother by riding a horse, and making it hop over obstacles.'),
--('Biathlon', NULL, 'Participating athletes will compete against eachother by skiing on trails, and shooting guns at targets.'),
--('Bobsleigh', 1, 'Participating athletes will compete against eachother by riding in an ice cart down a corrugated hill.'),
--('Ice Hockey', 2, 'Participating athletes will compete against eachother by fighting with pads on for control of a small object while sliding on ice.'),
--('Figure skating', 1, 'Participating athletes will compete against eachother by attempting to make the most visually appealing movement while sliding on ice.')

--Insert into Team (Sport_id, Country_code, Name)
--values
--(1, 'HUN', 'HUN swimming team 1'),
--(1, 'HUN', 'HUN swimming team 2'),
--(1, 'AUT', 'AUT swimming team'),
--(2, 'AUS', 'AUS athletics team'),
--(2, 'USA', 'USA athletics team 1'),
--(2, 'USA', 'USA athletics team 2'),
--(7, 'FRA', 'FRA biathalon team 1'),
--(7, 'FRA', 'FRA biathalon team 2'),
--(7, 'FIN', 'FIN biathalon team'),
--(7, 'SUI', 'SUI biathalon team')

--Insert into Athlete (Country_code, Team_id, Sports)
--values
--('HUN', 1, 'Swimming'),
--('AUT', 2, 'Swimming'),
--('AUS', 3, 'Athletics'),
--('USA', 3, 'Athletics'),
--('USA', 3, 'Athletics'),
--('FRA', 4, 'Biathlon'),
--('FRA', 4, 'Biathlon'),
--('FIN', 5, 'Biathlon'),
--('FIN', 5, 'Biathlon'),
--('SUI', 6, 'Biathlon')

--Insert into Coach (Country_code, Team_id, Sports)
--values
--('HUN', 1, 'Swimming'),
--('AUT', 2, 'Swimming'),
--('AUS', 3, 'Athletics'),
--('USA', 4, 'Athletics'),
--('FRA', 5, 'Biathlon'),
--('FIN', 6, 'Biathlon'),
--('SUI', 7, 'Biathlon'),
--('GRE', 7, 'Archery'),
--('GBR', 7, 'Boxing'),
--('SWE', 7, 'Cycling')