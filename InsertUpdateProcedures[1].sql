CREATE PROCEDURE dbo.Spinsert_dbo_vet @Vet_ID      VARCHAR(25), 
                                      @Last_name   VARCHAR(30), 
                                      @First_name  VARCHAR(30), 
                                      @Street      VARCHAR(20), 
                                      @City        VARCHAR(20), 
                                      @State       VARCHAR(20), 
                                      @Postal_code VARCHAR(20), 
                                      @Salary      VARCHAR(25), 
                                      @degree      VARCHAR(20), 
                                      @position    VARCHAR(20) 
AS 
    SET nocount ON 

    INSERT INTO dbo.vet 
                (vet_id, 
                 last_name, 
                 first_name, 
                 street, 
                 city, 
                 state, 
                 postal_code, 
                 salary, 
                 degree, 
                 position) 
    VALUES      (@Vet_ID, 
                 @Last_name, 
                 @First_name, 
                 @Street, 
                 @City, 
                 @State, 
                 @Postal_Code, 
                 @Salary, 
                 @degree, 
                 @position) 

go 

SET IDENTITY_INSERT vet ON 

EXECUTE dbo.Spinsert_dbo_vet 
  @Vet_ID = '13', 
  @Last_name = 'Patel', 
  @First_name = 'Trush', 
  @Street = '123 Aero St', 
  @City = 'Hatfield', 
  @State = 'PA', 
  @Postal_Code = '19440', 
  @Salary = '78854.25', 
  @degree = 'Masters', 
  @position = 'Vet' 

SET IDENTITY_INSERT vet OFF 

go 

CREATE PROCEDURE dbo.Spinsert_dbo_owner @Owner_ID    VARCHAR(25), 
                                        @Owner_name  VARCHAR(30), 
                                        @Street      VARCHAR(30), 
                                        @City        VARCHAR(20), 
                                        @State       VARCHAR(20), 
                                        @Postal_Code VARCHAR(20) 
AS 
    SET nocount ON 

    INSERT INTO dbo.owner 
                (owner_id, 
                 owner_name, 
                 street, 
                 city, 
                 state, 
                 postal_code) 
    VALUES      (@Owner_ID, 
                 @Owner_name, 
                 @Street, 
                 @City, 
                 @State, 
                 @Postal_Code) 

go 

SET IDENTITY_INSERT owner ON 

EXECUTE dbo.Spinsert_dbo_owner 
  @Owner_ID = '5', 
  @Owner_Name = 'May Aprils', 
  @Street = '24 Forty Foot Rd', 
  @City = 'Hatfield', 
  @State = 'PA', 
  @Postal_Code = '19440' 

SET IDENTITY_INSERT owner OFF 

go 

CREATE PROCEDURE dbo.Spinsert_dbo_pet @Pet_ID      VARCHAR(25), 
                                      @Pet_name    VARCHAR(30), 
                                      @Street      VARCHAR(30), 
                                      @City        VARCHAR(20), 
                                      @State       VARCHAR(20), 
                                      @Postal_Code VARCHAR(20), 
                                      @Breed       VARCHAR(20), 
                                      @Owner_ID    VARCHAR(25) 
AS 
    SET nocount ON 

    INSERT INTO dbo.pet 
                (pet_id, 
                 pet_name, 
                 street, 
                 city, 
                 state, 
                 postal_code, 
                 breed, 
                 owner_id) 
    VALUES      (@Pet_ID, 
                 @Pet_name, 
                 @Street, 
                 @City, 
                 @State, 
                 @Postal_Code, 
                 @Breed, 
                 @Owner_ID) 

go 

SET IDENTITY_INSERT pet ON 

EXECUTE dbo.Spinsert_dbo_pet 
  @Pet_ID = '41', 
  @Pet_name = 'Jessica', 
  @Street = '244 Maple St', 
  @City = 'Lansdale', 
  @State = 'PA', 
  @Postal_Code = '19446', 
  @Breed = 'German Shepard', 
  @Owner_ID ='20' 

SET IDENTITY_INSERT pet OFF 

go 

CREATE PROCEDURE dbo.Spinsert_dbo_appointment @Appointment_ID   VARCHAR(25), 
                                              @Appointment_Date DATE, 
                                              @Vet_ID           VARCHAR(30), 
                                              @Pet_ID           VARCHAR(20) 
AS 
    SET nocount ON 

    INSERT INTO dbo.appointment 
                (appointment_id, 
                 appointment_date, 
                 vet_id, 
                 pet_id) 
    VALUES      (@Appointment_ID, 
                 @Appointment_Date, 
                 @Vet_ID, 
                 @Pet_ID) 

go 

SET IDENTITY_INSERT appointment ON 

EXECUTE dbo.Spinsert_dbo_appointment 
  @Appointment_ID = '40', 
  @Appointment_Date = '12/12/2022', 
  @Vet_ID = '1', 
  @Pet_ID = '25' 

SET IDENTITY_INSERT appointment OFF 

go 

DECLARE @Street varchar(50);
SET @Street = '239 Tony Point';
UPDATE dbo.owner
SET Street=ISNULL(@Street, street) 
WHERE Street=@Street

DECLARE @State varchar(50);
SET @State = 'PA';
UPDATE dbo.Pet
SET State=ISNULL(@State, State) 
WHERE State=@State

DECLARE @Position varchar(50);
SET @Position = 'Nurse';
UPDATE dbo.vet
SET @Position=ISNULL(@Position, Position) 
WHERE Position= @Position

DECLARE @Appointment_ID varchar(10);
SET @Appointment_ID = '21';
UPDATE dbo.Appointment
SET @Appointment_ID=ISNULL(@Appointment_ID, Appointment_ID) 
WHERE Appointment_ID=@Appointment_ID