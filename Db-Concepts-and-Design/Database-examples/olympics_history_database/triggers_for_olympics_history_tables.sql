Use Olympics
Go

Create trigger Gender_equality
On Event
Instead of insert
As

Begin

	insert into Event(Event_host_id, Discipline_id, Name, Gender)
	select Event_host_id, Discipline_id, Name, 'Men'
	from inserted

	insert into Event(Event_host_id, Discipline_id, Name, Gender)
	select Event_host_id, Discipline_id, Name, 'Women'
	from inserted

End
Go

Insert into Event(Event_host_id, Discipline_id, Name, Gender)
values (1, 1, 'Test', 'Men')
Go

select * from Event