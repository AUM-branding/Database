Use Olympics

go

--Make a teams from year function




Create view Teams_info

as

select Team.Discipline_id, Country.Name as Country_name, Team.Name as Team_name, Athlete.First_name as Athlete_first_name, Athlete.Last_name as Athlete_last_name
from Team, Athlete, Country

where Athlete.Team_id = Team.Id
and Team.Country_code = Country.Id

go




Create view Data_for_host_countries

as

select Country.Name as Country_name, Country.Population, Country.GDP, City.Name as City_name, Event_host_data.Year, Event_host_data.Season from Country, City, Event_host_data

where Country.Id = City.Country_code
and City.Id = Event_host_data.City_id

go




Create view Gold_medalists

as

select Event_medalists.Event_id, Event_medalists.Athlete_id, Event_medalists.Medal, 
       Athlete.First_name, Athlete.Last_name 
from Event_medalists, Athlete

where Athlete.Id = Event_medalists.Athlete_id
and Event_medalists.Medal = 'Gold';

go




Create view Silver_medalists

as

select Event_medalists.Event_id, Event_medalists.Athlete_id, Event_medalists.Medal, 
       Athlete.First_name, Athlete.Last_name 
from Event_medalists, Athlete

where Athlete.Id = Event_medalists.Athlete_id
and Event_medalists.Medal = 'Silver';

go




Create view Bronze_medalists

as

select Event_medalists.Event_id, Event_medalists.Athlete_id, Event_medalists.Medal, 
       Athlete.First_name, Athlete.Last_name 
from Event_medalists, Athlete

where Athlete.Id = Event_medalists.Athlete_id
and Event_medalists.Medal = 'Bronze';

go

select * from Gold_medalists;
select * from Silver_medalists;
select * from Bronze_medalists;
select * from Data_for_host_countries;
select * from Teams_info;