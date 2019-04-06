CREATE TABLE Vet
(
    [VET_ID] INT IDENTITY(1,1) CONSTRAINT Pk_Vet_VetID PRIMARY KEY,
    [LAST_NAME] VARCHAR(20),
    [FIRST_NAME] VARCHAR(20),
    [STREET] VARCHAR(30),
    [CITY] VARCHAR(20),
    [STATE] VARCHAR(20),
    [POSTAL_CODE] VARCHAR(20),
    [SALARY] DECIMAL(8,2),
    [DEGREE] VARCHAR(20),
    [POSITION] VARCHAR(20)
)

CREATE TABLE Owner
(
    [OWNER_ID] INT IDENTITY(1,1) CONSTRAINT Pk_Owner_OwnerID PRIMARY KEY,
    [OWNER_NAME] VARCHAR(30) NOT NULL,
    [STREET] VARCHAR(30),
    [CITY] VARCHAR(20),
    [STATE] VARCHAR(20),
    [POSTAL_CODE] VARCHAR(20)
   
)

CREATE TABLE Pet
(
    [PET_ID] INT IDENTITY(1,1) CONSTRAINT Pk_Pet_PetID PRIMARY KEY,
    [PET_NAME] VARCHAR(35) NOT NULL,
    [STREET] VARCHAR(30),
    [CITY] VARCHAR(15),
    [STATE] VARCHAR(2),
    [POSTAL_CODE] VARCHAR(5),
    [BREED] VARCHAR(20),
    [OWNER_ID] INT CONSTRAINT Fk_Pet_OwnerID FOREIGN KEY REFERENCES Owner(OWNER_ID)

)

CREATE TABLE Appointment
(
    [APPOINTMENT_ID] INT IDENTITY(1,1) CONSTRAINT Pk_Appointment_AppointmentID PRIMARY KEY,
    [APPOINTMENT_DATE] DATE,
    [VET_ID] INT  CONSTRAINT Fk_Appointment_VetID FOREIGN KEY REFERENCES VET(VET_ID),
    [PET_ID] INT  CONSTRAINT Fk_Appointment_PetID FOREIGN KEY REFERENCES Pet(PET_ID), 
)

SET IDENTITY_INSERT vet ON
INSERT INTO vet ([vet_ID],[last_name],[first_name],[street],[city],[state], [postal_code], [salary],[degree],[position]) 
VALUES (1, 'Skechley', 'Cristine', '24340 7th   Plaza', 'Pittsburgh', 'PA', '15274', 88053.30, 'Masters', 'Vet'), 
       (2, 'Fishpoole', 'Sig', '06784 Anthes Point', 'Philadelphia', 'PA', '19184', 45525.56, 'Associates', 'Receptionist'), 
       (3, 'Stother', 'Rycca', '04304 Superior Hill', 'Allentown', 'PA', '18105', 90553.37, 'Masters', 'Vet'), 
       (4, 'Scandrite', 'Kerrill', '30320 Express Crossing', 'Harrisburg', 'PA', '17126', 102553.59, 'Doctorates', 'Vet'), 
       (5, 'Glassman', 'Rhett', '33418 Tomscot Trail', 'Mc Keesport', 'PA', '15134', 56052.24, 'Bachelor', 'Management'), 
       (6, 'Gioan', 'Rab', '1 Pennsylvania Street', 'Hatfield', 'PA', '19440', 35880.76, 'Student', 'Janitor'), 
       (7, 'Patel', 'Dhruv', '24411 Jean Drive', 'Hatfield', 'PA', '19440', 42790.88, 'Student', 'Nurse'), 
       (8, 'Smith', 'Giana', '24 Malple Street', 'Lansdale', 'PA', '19446', 35880.22, 'Student', 'Janitor'), 
       (9, 'Lopez', 'Briana', 'Orvilla', 'Allentown', 'PA', '18105', 74880.47, 'Masters', 'Vet'), 
       (10, 'Sam', 'Hector', 'Orvilla', 'Allentown', 'PA', '18105', 74880.47, 'Masters', 'Unknown')
SET IDENTITY_INSERT vet OFF


SET IDENTITY_INSERT owner ON
INSERT INTO owner ([owner_ID],[owner_name],[street],[city],[state],[postal_code]) 
VALUES (11, 'Samantha Rodgers','96372 Dexter Terrace','Erie', 'PA','16510'), 
       (12,'Jenkins Tim','486 Marcy Avenue','Philadelphia','PA','19184'), 
       (13,'Smith Bobby','03781 Meadow Ridge','Erie','PA','16510'), 
       (14,'Parker Aaron','80 Marcy Place','Harrisburg','PA','17126'), 
       (15,'Gil Malcomn','239 Tony Point','Harrisburg','PA','17110'), 
       (16,'Ramsey Torrey','0778 Columbus Park','Philadelphia','PA','19178'), 
       (17,'Novak Cole','63519 Warbler Way','Pittsburgh','PA','15261'), 
       (18,'Cunningham Dylan','0728 Esch Terrace','Pittsburgh ','PA','15274'), 
       (19,'Barclay Liam','36 John Wall Parkway','Pittsburgh ','PA','15210'), 
       (20,'Perez Joseph','Hatfield Village','Hatfield','PA','19440')
SET IDENTITY_INSERT owner OFF


SET IDENTITY_INSERT Pet ON
INSERT INTO Pet ([PET_ID], [PET_NAME], [STREET], [CITY], [STATE],[POSTAL_CODE], [BREED], [OWNER_ID]) 
VALUES (21,'Jimmy','96372 Dexter Terrace','Erie', 'CA','16510','Affenpinscher',11), 
       (22,'Lily','486 Marcy Avenue','Philadelphia','PA','19184','American Bulldog',12), 
       (23,'Sally','03781 Meadow Ridge','Erie','CA','16510','American Eskimo Dog',13), 
       (24,'Joey','80 Marcy Place','Harrisburg','PA','17126','Barbet',14), 
       (25,'Rocky','239 Tony Point','Harrisburg','CA','17110','Papillon',15), 
       (26,'Daisy','0778 Columbus Park','Philadelphia','PA','19178','McNab',16), 
       (27,'Chloe','63519 Warbler Way','Pittsburgh','PA','15261','Mountain Cur',17), 
       (28,'Mike','0728 Esch Terrace','Pittsburgh ','CA','15274','Pug',18), 
       (29,'Bruno','36 John Wall Parkway','Pittsburgh ','PA','15210','Pomeranian',19), 
       (30,'Daisy','Hatfield Village','Hatfield','PA','19440','Rat Terrier',20),
       (31,'Tim','Hatfield Village','Hatfield','PA','19440','German Shepherd',20)
SET IDENTITY_INSERT Pet OFF


SET IDENTITY_INSERT appointment ON
INSERT INTO appointment ([APPOINTMENT_ID],[appointment_date],[VET_ID],[PET_ID]) 
VALUES (21,'12/11/2017',1,25), 
       (30,'12/12/2017',2,26), 
       (23,'12/12/2017',1,27), 
       (29,'12/13/2017',4,23), 
       (25,'12/14/2017',5,22)
SET IDENTITY_INSERT appointment OFF


DELETE 
FROM Appointment
Where [APPOINTMENT_DATE] = '12/12/2017'

DELETE 
FROM Pet
Where [PET_NAME] = 'Chloe'

DELETE 
FROM Vet
Where [POSITION] = 'Receptionist'

UPDATE Appointment
SET [APPOINTMENT_DATE] = '12/25/2019'
WHERE [Pet_ID] = '25';

UPDATE Pet
SET [PET_NAME] = 'Julia', [STREET]= 'Hatfield Village'
WHERE PET_ID = 30;

UPDATE Owner
SET [OWNER_NAME] = 'Jennifer Rodgers'
WHERE [OWNER_NAME] = 'Samantha Rodgers'

UPDATE Vet
SET [POSITION] = 'Tech'
WHERE [POSITION] = 'Unknown'





