USE MicrocontrollersKitsAndParts
SELECT Part.PartNumber, PartSpecification, PartType, PartDescription, Manufacturer.ManufacturerName, ComponentCost from Part
join Component on Part.PartNumber = Component.PartNumber
join Manufacturer on Component.ManufacturerNumber = Manufacturer.ManufacturerNumber
where Manufacturer.ManufacturerNumber = 1
order by Part.PartNumber ASC