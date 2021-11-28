	Use master

	Alter database Olympics 
Set single_user with rollback immediate
	
	Drop database if exists Olympics
	
	Create database Olympics
	
	Go




	Use Olympics

	Create table Country (
Id varchar (3) not null, constraint Pk_country_id primary key (Id),
Name varchar (50) not null,
Population int not null,
GDP decimal (23,14) null,
)

	Create table City (
Id int identity (1, 1) not null, constraint Pk_city_id primary key (Id),
Country_code varchar (3) not null, constraint Fk_city_country_id foreign key (Country_code) references Country (Id),
Name varchar (50) not null,
Population int not null,
)

	Create table Event_host_data (
Id int identity (1, 1) not null, constraint Pk_event_host_id primary key (Id),
Year smallint not null,
City_id int not null, constraint Fk_event_host_data_city_id foreign key (City_id) references City (Id),
Season varchar (10) not null
)

	Create table Sport (
Id int identity (1, 1) not null, constraint Pk_sport_id primary key (Id),
Name varchar (16) not null unique,
Season varchar (6),
Description varchar (144) not null
)

	Create table Discipline (
Id int identity (1, 1) not null, constraint Pk_discipline_id primary key (Id),	
Sport_id int not null, constraint Fk_discipline_sport_id foreign key (Sport_id) references Sport (Id),
Name varchar (25) not null,
Description varchar (144) null
)

	Create table Team (
Id int identity (1, 1) not null, constraint Pk_team_id primary key (Id),
Discipline_id int not null, constraint Fk_team_discipline_id foreign key (Discipline_id) references Discipline (Id),
Country_code varchar (3) not null, constraint Fk_team_country_id foreign key (Country_code) references Country (Id),
Name varchar(45) not null
)

	Create table Athlete (
Id int identity (1, 1) not null, constraint Pk_athlete_id primary key (Id),
Country_code varchar (3) not null, constraint Fk_athlete_country_id foreign key (Country_code) references Country (Id),
Team_id int null, constraint Fk_athlete_team_id foreign key (Team_id) references Team (Id),
First_name varchar (25) not null,
Last_name varchar (25) not null,
)

	Create table Coach (
Id int identity (1, 1) not null, constraint Pk_coach_athlete_id primary key (Id),
Country_code varchar (3) not null, constraint Fk_coach_country_id foreign key (Country_code) references Country (Id),
Team_id int null, constraint Fk_coach_team_id foreign key (Team_id) references Team (Id),
First_name varchar (25) null,
Last_name varchar (25) null,
)

	Create table Event (
Id int identity (1, 1) not null, constraint Pk_event_id primary key (Id),
Event_host_id int not null, constraint Fk_medalists_event_host_id foreign key (Event_host_id) references Event_host_data (Id),
Discipline_id int not null, constraint Fk_event_discipline_id foreign key (Discipline_id) references Discipline (Id),
Name varchar (60) not null,
Gender varchar(5) not null,
)

	Create table Event_medalists (
Id int identity (1, 1) not null, constraint Pk_event_medalists_id primary key (Id),
Event_id int not null, constraint Fk_medalist_event_id foreign key (Event_id) references Event (Id),
Athlete_id int not null, constraint Fk_event_medalists_athlete_id foreign key (Athlete_id) references Athlete (Id),
Medal varchar (16) not null
)




	Insert into Country (Id, Name, Population, GDP)
Values
('GRE', 'Greece', 10823732, 18002.2305776688),
('FRA', 'France', 66808385, 36205.5681017036),
('USA', 'United States', 321418820, 56115.7184261955),
('GBR', 'United Kingdom', 65138232, 43875.9696143686),
('SWE', 'Sweden', 9798871, 50579.6736486777),
('BEL', 'Belgium', 11285721, 40324.0277657215),
('NED', 'Netherlands', 16936520, 44299.768085383),
('AFG', 'Afghanistan', 32526562, 594.323081219966),
('GER', 'Germany', 81413145, 41313.3139945434),
('FIN', 'Finland', 5482013, 42311.0362306446),
('SUI', 'Switzerland', 8286976, 80945.0792194742),
('HUN', 'Hungary', 9844686, 12363.5434596539),
('AUT', 'Austria', 8611088, 43774.985173612),
('AUS', 'Australia', 23781169, 56310.9629933721)

	Insert into City (Country_code, Name, Population)
Values
('GRE', 'Athens', 664046),
('FRA', 'Paris', 2161000),
('USA', 'St Louis', 308174),
('GBR', 'London', 8982000),
('SWE', 'Stockholm', 975551),
('BEL', 'Antwerp', 498473),
('NED', 'Amsterdam', 821752),
('USA', 'Los Angeles', 3967000),
('GER', 'Berlin', 3645000),
('FIN', 'Helsinki', 631695),
('FRA', 'Chamonix', 8906),
('SUI', 'St.Moritz', 5233),
('USA', 'Lake Placid', 2346),
('GER', 'Garmisch', 26178)

	Insert into Event_host_data (Year, City_id, Season)
Values
(1896, 1, 'Summer'),
(1900, 2, 'Summer'),
(1904, 3, 'Summer'),
(1908, 4, 'Summer'),
(1912, 5, 'Summer'),
(1920, 6, 'Summer'),
(1924, 1, 'Winter'),
(1928, 12, 'Winter'),
(1932, 13, 'Winter'),
(1936, 14, 'Winter')

	Insert into Sport (Name, Season, Description)
Values
('Aquatics', 'Summer', 'Contains disciplines relating to water sports.'),
('Athletics', 'Summer', 'Contains disciplines relating to ground sports.'),
('Cycling', 'Summer', 'Contains disciplines relating to bicycles.'),
('Archery', 'Summer', 'Contains disciplines relating to bows and arrows.'),
('Boxing', 'Summer', 'Contains disciplines relating to ring fights.'),
('Biathlon', 'Winter', 'Contains disciplines relating to long distance and multi faceted competition.'),
('Bobsleigh', 'Winter', 'Contains disciplines relating to ice sledding.'),
('Ice Hockey', 'Winter', 'Contains disciplines relating to ice puck defending.'),
('Skating', 'Winter', 'Contains disciplines relating to skating on ice without harmful contact to others.'),
('Equestrian', 'Summer', 'Contains disciplines relating to comparing horses and rider capabilities that the teams use.')

	Insert into Discipline(Sport_id, Name, Description)
Values
(1, 'Swimming', 'Participating athletes will compete against eachother in water relays of various lengths.'),
(2, 'Athletics', 'Participating athletes will compete against eachother in land relays of various lengths, and types.'),
(4, 'Archery', 'Participating athletes will compete against eachother by shooting arrows through bows at targets. Each team consists of one man, and one woman.'),
(5, 'Boxing', 'Participating athletes will compete against eachother by fighting with gloves on and following specific rules.'),
(3, 'Cycling Track', 'Participating athletes will compete against eachother by racing around a track on bicycles.'),
(10, 'Equestrian', 'Participating athletes will compete against eachother by riding a horse, and making it hop over obstacles.'),
(6, 'Biathlon', 'Participating athletes will compete against eachother by skiing on trails, and shooting guns at targets.'),
(7, 'Bobsleigh', 'Participating athletes will compete against eachother by riding in an ice cart down a corrugated hill.'),
(8, 'Ice Hockey', 'Participating athletes will compete against eachother by fighting with pads on for control of a small object while sliding on ice.'),
(9, 'Figure skating', 'Participating athletes will compete against eachother by attempting to make the most visually appealing movement while sliding on ice.')

	Insert into Team (Discipline_id, Country_code, Name)
Values
(1, 'HUN', 'HUN swimming team 1'),
(1, 'HUN', 'HUN swimming team 2'),
(1, 'AUT', 'AUT swimming team'),
(2, 'AUS', 'AUS athletics team'),
(2, 'USA', 'USA athletics team 1'),
(2, 'USA', 'USA athletics team 2'),
(7, 'FRA', 'FRA biathalon team 1'),
(7, 'FRA', 'FRA biathalon team 2'),
(7, 'FIN', 'FIN biathalon team'),
(7, 'SUI', 'SUI biathalon team')

	Insert into Athlete (Country_code, Team_id, First_name, Last_name)
Values
('HUN', 1, 'Alfred', 'HAJOS'),
('AUT', 2, 'Otto', 'HERSCHMANN'),
('AUS', 3, 'Stanley', 'ROWLEY'),
('USA', 3, 'Francis', 'JARVIS'),
('USA', 3, 'Walter B. John', 'TEWKSBURY'),
('FRA', 4, 'G.', 'BERTHET'),
('FRA', 4, 'C.', 'MANDRILLON'),
('FIN', 5, 'V.E.', 'BREMER'),
('FIN', 5, 'A.', 'ESKELINEN'),
('SUI', 6, 'Adolf', 'AUFDENBLATTEN'),
('FRA', 4, 'Maurice', 'MANDRILLON')

	Insert into Coach (Country_code, Team_id, First_name, Last_name)
Values
('HUN', 1, NULL, NULL),
('AUT', 2, NULL, NULL),
('AUS', 3, NULL, NULL),
('USA', 4, NULL, NULL),
('FRA', 5, NULL, NULL),
('FIN', 6, NULL, NULL),
('SUI', 7, NULL, NULL),
('GRE', 7, NULL, NULL),
('GBR', 7, NULL, NULL),
('SWE', 7, NULL, NULL)

-- Create trigger to do the double insert automatically.

	Insert into Event (Event_host_id, Discipline_id, Name, Gender)
Values
(1, 1, '100M Freestyle', 'Men'),
(1, 1, '100M Freestyle', 'Women'),
(2, 2, '100M', 'Men'),
(2, 2, '100M', 'Women'),
(3, 3, 'Military Patrol', 'Men'),
(3, 3, 'Military Patrol', 'Women'),
(4, 1, '1200M Freestyle', 'Men'),
(4, 1, '1200M Freestyle', 'Women'),
(5, 5, 'Individual Road Race', 'Men'),
(5, 5, 'Individual Road Race', 'Women'),
(6, 8, 'Four-Man', 'Men'),
(6, 8, 'Four-Man', 'Women')

	Insert into Event_medalists (Event_id, Athlete_id, Medal)
Values
(1, 1, 'Gold'),
(1, 2, 'Silver'),
(2, 3, 'Bronze'),
(2, 4, 'Gold'),
(2, 5, 'Silver'),
(3, 6, 'Bronze'),
(3, 11, 'Bronze'),
(3, 8, 'Silver'),
(3, 9, 'Silver'),
(3, 10, 'Gold')