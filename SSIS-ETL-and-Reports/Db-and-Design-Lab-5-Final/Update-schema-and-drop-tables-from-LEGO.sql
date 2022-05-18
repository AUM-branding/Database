Use LEGO;
Go

Alter schema dbo
Transfer LEGO_USER_RESTRICTED.Colors
Go

Alter schema dbo
Transfer LEGO_USER_RESTRICTED.Inventories
Go

Drop table [dbo].Inventory_Parts
Drop table [dbo].Inventory_Sets
Drop table [dbo].Part_Categories
Drop table [dbo].Parts
Drop table [dbo].Sets
Drop table [dbo].Themes
Drop table [dbo].Colors
Drop table [dbo].Inventories
Go