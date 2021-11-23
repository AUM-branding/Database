-- SQL Procedure to find a sale and determine its currency conversion

Drop procedure if exists ConvertSalesCurrency

Go

Create procedure ConvertSalesCurrency
@SalesOrderID int, @CurrencyCode nvarchar(3), @DateOfSale date
As

	Select
	(Sales.SalesOrderDetail.UnitPrice * Sales.CurrencyRate.EndOfDayRate) as ConvertedPrice,
	Sales.SalesOrderDetail.* from Sales.SalesOrderDetail

	Join
	Sales.CurrencyRate on Sales.CurrencyRate.ToCurrencyCode = @CurrencyCode
	
	Where
	Sales.SalesOrderDetail.SalesOrderID = @SalesOrderID
	
	And
	Sales.CurrencyRate.CurrencyRateDate = @DateOfSale

Go

Exec ConvertSalesCurrency @SalesOrderId = 43674, @CurrencyCode = 'ARS', @DateOfSale = '2011-05-31';