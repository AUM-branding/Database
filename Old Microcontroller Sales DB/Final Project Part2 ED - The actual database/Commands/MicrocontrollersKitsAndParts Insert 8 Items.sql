USE MicrocontrollersKitsAndParts
SET IDENTITY_INSERT Item ON

/***/

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2, Component3)
VALUES (1, 'Elegoo Arduino R3 NTC Package', '3rd party Arduino', 20.00, '1Jameco Valuepro', '2Jameco Valuepro', '6Texas Instruments')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2, Component3)
VALUES (2, 'Arduino STEM Package', 'Arduino brand', 25.00, '8Edison Opto', '6Rochester Electronics LLC', '6Texas Instruments')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2)
VALUES (3, 'Generic Starter Logic Package', 'Minimal CPU clock with parts', 50.00, '6Texas Instruments', '1Jameco Valuepro')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2)
VALUES (4, 'Sponsored NAND Logic Package TI Brand', 'Program counter with TI based parts', 100.00, '6Texas Instruments', '6Texas Instruments')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2, Component3)
VALUES (5, 'LED Package', 'Assorted light emitting diodes', 2.00, '8Dialight', '8Dialight', '8Edison Opto')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2, Component3)
VALUES (6, 'Testing Breadboard', 'Testing breadboard with extra rails', 35.00, '1Jameco Valuepro', '1Jameco Valuepro', '1Jameco Valuepro')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1, Component2, Component3)
VALUES (7, 'Sensor Circuit With Addons', 'Pre-built sensor circuit with addons', 25.00, '4Jameco Valuepro', '4Cornell Dubilier', '3Viking')
Go

INSERT INTO Item
(ItemNumber, ItemName, ItemDescription, ItemCost, Component1)
VALUES (8, 'I2C Circuit Communication For Starters', 'Pre-Built Arduino Logic I2C Circuit', 5.00, '2Belden')
Go

/***/

SET IDENTITY_INSERT Item Off