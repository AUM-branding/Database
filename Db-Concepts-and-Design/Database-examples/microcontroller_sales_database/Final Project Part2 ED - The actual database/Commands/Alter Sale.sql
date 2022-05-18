USE MicrocontrollersKitsAndParts
ALTER TABLE Sale
ADD BuyerSatisfaction nvarchar(100) DEFAULT 'Not interested' NOT NULL
GO