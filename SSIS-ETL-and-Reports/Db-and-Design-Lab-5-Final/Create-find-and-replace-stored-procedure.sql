Use LEGO;
Go

Create procedure FindAndReplaceBlankShops
as
	Update shop_owners_purchase
	Set shop_name = last_name + '_' + country + '_' + 'Company'
	Where shop_name is null
	or shop_name = ''
Go