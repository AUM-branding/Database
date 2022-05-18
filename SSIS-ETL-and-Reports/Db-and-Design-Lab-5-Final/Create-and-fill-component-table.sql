Use LEGO;
Go

Create table component(
	component_num VARCHAR(50) NOT NULL PRIMARY KEY
	,name varchar(1000) NOT NULL
	,part_num VARCHAR(50) NOT NULL
	,qty_on_hand int NOT NULL
	,price decimal(10,2) NOT NULL
	,foreign key(part_num) references parts(part_num)
)

insert into component values
('1a', 'Addon flanger', '0687b1', 77, 15.0),
('4a', 'Superlative flanger', '0901', 1, 150.0),
('17c', 'Bolt holster', '0902', 567, 12.0),
('1', 'Wheel spinner', '0903', 14, 20.0),
('2', 'Jacket', '0904', 11, .09),
('x15', 'Rubber sticker', '1', 33, 11.2),
('1211', 'Oiler', '10', 302, 17.0),
('9-1', 'Lubricant', '10016414', 15, 18.0),
('2-2', 'Lubricant applier', '10019stk01', 12, 22.0),
('2-3', 'Tiedown', '10026stk01', 11, 22.0)