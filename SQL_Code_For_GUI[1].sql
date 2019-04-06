CREATE TABLE Vet
(
    VET_ID DECIMAL(4,0) PRIMARY KEY,
    LAST_NAME CHAR(20),
    FIRST_NAME CHAR(20),
    STREET CHAR(30),
    CITY CHAR(20),
    STATE CHAR(20),
    POSTAL_CODE CHAR(20),
    SALARY DECIMAL(8,2),
    DEGREE CHAR(20)

);

CREATE TABLE Owner
(
    OWNER_ID DECIMAL(4,0) PRIMARY KEY,
    OWNER_NAME CHAR(30) NOT NULL,
    STREET CHAR(30),
    CITY CHAR(20),
    STATE CHAR(20),
    POSTAL_CODE CHAR(20)
   
);

CREATE TABLE Pet
(
    PET_ID DECIMAL(4,0) PRIMARY KEY,
    PET_NAME CHAR(35) NOT NULL,
    STREET CHAR(30),
    CITY CHAR(15),
    STATE CHAR(2),
    POSTAL_CODE CHAR(5),
    BREED CHAR(20),
    OWNER_ID DECIMAL(4,0) FOREIGN KEY REFERENCES Owner(OWNER_ID)

);

CREATE TABLE Appointment
(
    APPOINTMENT_ID DECIMAL(4,0) PRIMARY KEY,
    APPOINTMENT_DATE DATE,
    VET_ID DECIMAL(4,0) FOREIGN KEY REFERENCES VET(VET_ID),
    PET_ID DECIMAL(4,0) FOREIGN KEY REFERENCES Pet(PET_ID), 
);

INSERT INTO Owner
VALUES
	(11, 'Samantha Rodgers','96372 Dexter Terrace','Erie', 'PA','16510'); 
INSERT INTO Owner
VALUES
	(12,'Jenkins Tim','486 Marcy Avenue','Philadelphia','PA','19184'); 
INSERT INTO Owner
VALUES
	(13,'Smith Bobby','03781 Meadow Ridge','Erie','PA','16510'); 
INSERT INTO Owner
VALUES
	(14,'Parker Aaron','80 Marcy Place','Harrisburg','PA','17126'); 
INSERT INTO Owner
VALUES
	(15,'Gil Malcomn','239 Tony Point','Harrisburg','PA','17110'); 
INSERT INTO Owner
VALUES
	(16,'Ramsey Torrey','0778 Columbus Park','Philadelphia','PA','19178'); 
INSERT INTO Owner
VALUES
	(17,'Novak Cole','63519 Warbler Way','Pittsburgh','PA','15261');
INSERT INTO Owner
VALUES
	(18,'Cunningham Dylan','0728 Esch Terrace','Pittsburgh ','PA','15274');
INSERT INTO Owner
VALUES
	(19,'Barclay Liam','36 John Wall Parkway','Pittsburgh ','PA','15210'); 
INSERT INTO Owner
VALUES
	(20,'Perez Joseph','Hatfield Village','Hatfield','PA','19440');


INSERT INTO vet
VALUES	
	(1, 'Skechley', 'Cristine', '24340 7th   Plaza', 'Pittsburgh', 'PA', '15274', 88053.30, 'Masters');
INSERT INTO vet
VALUES
	(2, 'Fishpoole', 'Sig', '06784 Anthes Point', 'Philadelphia', 'PA', '19184', 45525.56, 'Associates');
INSERT INTO vet
VALUES
	(3, 'Stother', 'Rycca', '04304 Superior Hill', 'Allentown', 'PA', '18105', 90553.37, 'Masters'); 
INSERT INTO vet
VALUES
	(4, 'Scandrite', 'Kerrill', '30320 Express Crossing', 'Harrisburg', 'PA', '17126', 102553.59, 'Doctorates'); 
INSERT INTO vet
VALUES
	(5, 'Glassman', 'Rhett', '33418 Tomscot Trail', 'Mc Keesport', 'PA', '15134', 56052.24, 'Bachelor'); 
INSERT INTO vet
VALUES
	(6, 'Gioan', 'Rab', '1 Pennsylvania Street', 'Hatfield', 'PA', '19440', 35880.76, 'Student'); 
INSERT INTO vet
VALUES
	(7, 'Patel', 'Dhruv', '24411 Jean Drive', 'Hatfield', 'PA', '19440', 42790.88, 'Student'); 
INSERT INTO vet
VALUES
	(8, 'Smith', 'Giana', '24 Malple Street', 'Lansdale', 'PA', '19446', 35880.22, 'Student'); 
INSERT INTO vet
VALUES
	(9, 'Lopez', 'Briana', 'Orvilla', 'Allentown', 'PA', '18105', 74880.47, 'Masters'); 
INSERT INTO vet
VALUES
	(10, 'Sam', 'Hector', 'Orvilla', 'Allentown', 'PA', '18105', 74880.47, 'Masters');




INSERT INTO Pet
VALUES
	(21,'Jimmy','96372 Dexter Terrace','Erie', 'PA','16510','Affenpinscher',11); 
INSERT INTO Pet
VALUES       
	(22,'Lily','486 Marcy Avenue','Philadelphia','PA','19184','American Bulldog',12); 
INSERT INTO Pet
VALUES       
	(23,'Sally','03781 Meadow Ridge','Erie','PA','16510','American Eskimo Dog',13); 
INSERT INTO Pet
VALUES       
	(24,'Joey','80 Marcy Place','Harrisburg','PA','17126','Barbet',14); 
INSERT INTO Pet
VALUES       
	(25,'Rocky','239 Tony Point','Harrisburg','PA','17110','Papillon',15); 
INSERT INTO Pet
VALUES       
	(26,'Sam','0778 Columbus Park','Philadelphia','PA','19178','McNab',16); 
INSERT INTO Pet
VALUES       
	(27,'Chloe','63519 Warbler Way','Pittsburgh','PA','15261','Mountain Cur',17); 
INSERT INTO Pet
VALUES       
	(28,'Mike','0728 Esch Terrace','Pittsburgh ','PA','15274','Pug',18); 
INSERT INTO Pet
VALUES       
	(29,'Bruno','36 John Wall Parkway','Pittsburgh ','PA','15210','Pomeranian',19); 
INSERT INTO Pet
VALUES       
	(30,'Daisy','Hatfield Village','Hatfield','PA','19440','Rat Terrier',20);
INSERT INTO Pet
VALUES       
	(31,'Tim','Hatfield Village','Hatfield','PA','19440','German Shepherd',20);


INSERT INTO appointment
VALUES 
	(21,'12/11/2017',1,25);
INSERT INTO appointment
VALUES       
	(30,'12/12/2017',2,26); 
INSERT INTO appointment
VALUES       
	(23,'12/12/2017',1,27); 
INSERT INTO appointment
VALUES       
	(29,'12/13/2017',4,23); 
INSERT INTO appointment
VALUES       
	(25,'12/14/2017',5,22);


DELETE 
FROM Appointment
Where APPOINTMENT_DATE = '12/12/2017'

UPDATE Owner
SET OWNER_NAME = 'Jennifer Rodgers'
WHERE OWNER_NAME = 'Jenkins Tim'


