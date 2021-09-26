USE MicrocontrollersKitsAndParts
SET IDENTITY_INSERT Part ON

/***/

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (1, 'Solderless', 'Breadboard', 'Used for testing and connecting various circuit components.')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (2, '22 AWG', 'Copper Hook Up Wire', 'A preferred wire gauge resistance/rating')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (3, '1KΩ', 'Resistor', 'Used for current/voltage control')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (4, '1MΩ', 'Potentiometer', 'Used for variable resistance in current/voltage control')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (5, '0.1µF', 'Capacitor', 'Used for noise reduction or controlled clock timing and discharge')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (6, '74LS00', 'Quad NAND gate', 'Used to create boolean logic for not and statements')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (7, '74LS173', '4-bit D-type register', 'Temporary storage device for data transfer to and from bus.')
Go

INSERT INTO Part
(PartNumber, PartSpecification, PartType, PartDescription)
VALUES (8, 'Green', 'LED', 'Used to indicate circuit logic states for debugging')
Go

/***/

SET IDENTITY_INSERT Part Off