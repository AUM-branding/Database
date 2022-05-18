Use LEGO;
Go

Select cast(replace(SubString(total_purchases, PatIndex('%[0-9.-]%', total_purchases), 10), ',','') as decimal(10,2))
, total_purchases
FROM shop_owners_purchase