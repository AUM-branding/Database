Use Olympics
Go

Create function Fun_team_quicklookup()
returns table
as
return (select Team.Name as Name, Discipline_id as Team_discipline, Discipline.Id as Discipline_id, Discipline.Name as Discipline from Team, Discipline)
Go

select * from Fun_team_quicklookup()
Go




Create function Fun_teams_lookup_using_discipline(@discipline_p as varchar(25))
returns table
as
	return (select Team.Name as Name, Discipline.Name as Discipline from Team, Discipline
			where Discipline.Name = @discipline_p and Discipline.Id = Discipline_id)
Go

select * from Fun_teams_lookup_using_discipline('Athletics')