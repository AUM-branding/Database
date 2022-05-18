USE Cinema

CREATE TABLE Studio(
	Id int not null identity(1,1) CONSTRAINT PK_StudioId primary key clustered (Id),
	Distributor nvarchar(100) not null,
	ResidentialState nvarchar(2) not null,
	CEO nvarchar (30) not null
);