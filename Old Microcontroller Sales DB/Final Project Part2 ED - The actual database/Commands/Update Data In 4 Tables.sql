USE MicrocontrollersKitsAndParts
Update Part
SET PartDescription = 'The preferred wire gauge resistance/rating' where PartNumber = 2
GO

Update Component
SET ComponentCost = 0.76 where PartNumber = 2 AND ManufacturerNumber = 1
GO

INSERT INTO Component
(PartNumber, ManufacturerNumber, ManufacturerName, ComponentCost)
VALUES (2, 2, 'Belden', '2Belden', 15.00)
GO

Update Item
SET Component3 = '2Belden' where ItemNumber = 2
GO

Update Sale
SET BuyerNumber = 2
GO