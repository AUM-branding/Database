Use Olympics
Go

Create procedure Insert_medalist
@Event_id int,
@Athlete_id int,
@Medal varchar(16)

as
	insert into Event_medalists(Event_id, Athlete_id, Medal)
	values (@Event_id, @Athlete_id, @Medal)
Go

Exec Insert_medalist @Event_id = 1, @Athlete_id = 1, @Medal = 'Test'
Go

Select * from Event_medalists
Go




Create procedure Update_country_data
@Id varchar(3),
@Name varchar(50),
@Population int,
@GDP decimal(23,14)

as
	update country
	set Name = @name, Population = @Population, GDP = @GDP
	where Id = @Id
Go

Exec Update_country_data @Id = 'AFG', @Name = 'Test', @Population = 100, @GDP = 100.1
Go

Select * from Country
Go