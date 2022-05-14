CREATE DATABASE MicrocontrollersKitsAndParts
Go

Use MicrocontrollersKitsAndParts
CREATE TABLE Manufacturer
(ManufacturerNumber int IDENTITY(1,1) NOT NULL,
 ManufacturerName nvarchar(100) NOT NULL,
 ManufacturerType nvarchar(100) NOT NULL,
 ManufacturerLead nvarchar(100) NOT NULL,
 ManufacturerSupport nvarchar(100) NULL,
 ManufacturerSales nvarchar(100) NOT NULL,
CONSTRAINT PK_ManufacturerNumber PRIMARY KEY CLUSTERED (ManufacturerNumber))
GO

Use MicrocontrollersKitsAndParts
CREATE TABLE Part
(PartNumber int IDENTITY(1,1) NOT NULL,
 PartSpecification nvarchar(100) NOT NULL,
 PartType nvarchar(100) NOT NULL,
 PartDescription nvarchar(500) NULL,
CONSTRAINT PK_PartNumber PRIMARY KEY CLUSTERED (PartNumber))
GO

Use MicrocontrollersKitsAndParts
CREATE TABLE Buyer
(BuyerNumber int IDENTITY(1,1) NOT NULL,
 BuyerFirst nvarchar(100) NOT NULL,
 BuyerLast nvarchar(100) NOT NULL,
 BuyerEmail nvarchar(100) NOT NULL,
CONSTRAINT PK_BuyerNumber PRIMARY KEY CLUSTERED (BuyerNumber))
GO

Use MicrocontrollersKitsAndParts
CREATE TABLE Component
(PartNumber int NOT NULL, /*PLEASE NOTE THAT 1 PART CAN HAVE MANY MANUFACTURERS. THEREFORE, NOT AN IDENTITY.*/
 ManufacturerNumber int NOT NULL,
 ManufacturerName nvarchar(100) NOT NULL,
 Component as (CONCAT(PartNumber,ManufacturerName)), /*IDENTITY*/
 ComponentCost decimal(10,2) NOT NULL,
CONSTRAINT PK_Component PRIMARY KEY CLUSTERED (PartNumber, ManufacturerName), /*COMPOSITE*/
CONSTRAINT FK_PartNumber FOREIGN KEY (PartNumber) REFERENCES Part(PartNumber),
CONSTRAINT FK_ManufacturerNumber FOREIGN KEY (ManufacturerNumber) REFERENCES Manufacturer(ManufacturerNumber))
GO

Use MicrocontrollersKitsAndParts
CREATE TABLE Item
(ItemNumber int IDENTITY(1,1) NOT NULL,
 ItemName nvarchar(100) NOT NULL,
 ItemDescription nvarchar(500) NULL,
 ItemCost decimal(10,2) NOT NULL,
 Component1 nvarchar(100) NOT NULL,
 Component2 nvarchar(100) NULL,
 Component3 nvarchar(100) NULL,
CONSTRAINT PK_ItemNumber PRIMARY KEY CLUSTERED (ItemNumber))
GO

Use MicrocontrollersKitsAndParts
CREATE TABLE Kit
(KitNumber int IDENTITY(1,1) NOT NULL,
 KitCost decimal(10,2) NOT NULL,
 ItemNumber1 int NOT NULL,
 ItemNumber2 int NOT NULL,
 ItemNumber3 int NOT NULL,
 Component1 int NOT NULL,
 Component2 int NOT NULL,
 Component3 int NOT NULL,
 Component4 int NOT NULL,
 Component5 int NOT NULL,
 Component6 int NOT NULL,
CONSTRAINT PK_KitNumber PRIMARY KEY CLUSTERED (KitNumber),
CONSTRAINT FK_ItemNumber1 FOREIGN KEY (ItemNumber1) REFERENCES Item(ItemNumber),
CONSTRAINT FK_ItemNumber2 FOREIGN KEY (ItemNumber2) REFERENCES Item(ItemNumber),
CONSTRAINT FK_ItemNumber3 FOREIGN KEY (ItemNumber3) REFERENCES Item(ItemNumber))
Go

Use MicrocontrollersKitsAndParts
CREATE TABLE Sale
(KitNumber int NULL,
 ItemNumber int NULL,
 BuyerNumber int NOT NULL,
 SaleNumber int IDENTITY(1,1) NOT NULL,
 InvoiceNumber as (CONCAT(KitNumber,ItemNumber,BuyerNumber,SaleNumber)),
CONSTRAINT PK_Sale PRIMARY KEY CLUSTERED (SaleNumber))
GO