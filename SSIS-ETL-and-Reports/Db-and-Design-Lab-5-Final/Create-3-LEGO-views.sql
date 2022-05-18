Use LEGO;
Go

-- View to check how much value is held in each of the components:

Create view componentQtyValues
as
	select component_num as ProductNumber, name as ProductName, part_num as ProductPartNumber, qty_on_hand as OnHand, price as CostPerUnit, price * qty_on_hand as Value
	from component
	Go

-- View to check which parts in inventory have components:

Create view inventoryPartsWithComponents
as
	select inventory_parts.id, inventory_id, inventory_parts.part_num, color_id, quantity, is_spare
	from inventory_parts, component where inventory_parts.part_num = component.part_num
	Go

-- View to check if inventory is getting low:

Create view lowInventory
as
	select * from inventory_parts
	where quantity < 100
	Go