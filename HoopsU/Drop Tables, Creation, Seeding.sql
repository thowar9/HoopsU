--Author: Tucker Howard
--Towson University
--Date: 12/10/2017
--Purpose: Database creation script 

--Select the database to use
USE HoopsUDB;
GO

--declare script var as type BIT
Declare @Pass BIT; --to make sure op worked
Set @pass = 1; --set value to represent TRUE

----Drop Table tblCourt and start fresh----
if exists(select * from sys.objects where name = 'tblCourt')
BEGIN
	drop table tblCourt; 
END


----New table tblCourt to create----
BEGIN TRY
CREATE TABLE tblCourt (
fldCourtID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
fldCourtName nvarchar(30) NOT NULL,
fldCourtCapacity INT NOT NULL, 
fldCourtFullSize BIT NOT NULL, 
fldCourtAddress nvarchar(50) NOT NULL, 
fldCourtParkingAvailable BIT NOT NULL,
fldCourtZone nvarchar(30) NOT NULL);
PRINT 'tblCourt created';
END TRY
BEGIN CATCH
	PRINT 'tblCourt was NOT created'; 
	Set @pass = 0 -- FALSE, not created
END CATCH 

----Seed the tblCourt to test design----
BEGIN TRY
IF @Pass = 1 --true if table was created
BEGIN
	INSERT INTO tblCourt 
	(fldCourtName, fldCourtCapacity, fldCourtFullSize, fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('YMCA', '35', 'TRUE', '123 Example St', '1', 'Towson'); 
	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('LA Fitness', '20', '1', '500 York Road', '0', 'Towson'); 
	
	PRINT 'tblCourt seeded'; 
	END
ELSE 
	PRINT 'tblCourt NOT seeded'; 
END TRY
BEGIN CATCH 
	PRINT 'tblCourt was NOT seeded'; 
END CATCH

-----------------------------------------------------------------------------------------
SET @pass = 1; 
----Drop Table tblUser and start fresh----
IF exists(select * from sys.objects where name = 'tblUser')
BEGIN
	drop table tblUser; 
END

----New table tblUser to create----
BEGIN TRY
CREATE TABLE tblUser (
fldUserID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
fldUsername nvarchar(15) NOT NULL,
fldUserPassword nvarchar(15) NOT NULL,
fldUserFirstName nvarchar(15) NOT NULL,
fldUserLastName nvarchar(30) NOT NULL,
fldUserGender BIT NOT NULL,
fldUserAddress nvarchar(30) NOT NULL,  
fldUserEmailAddress nvarchar(50) NOT NULL);
PRINT 'tblUser created';
END TRY
BEGIN CATCH
	PRINT 'tblUser was NOT created'; 
	Set @pass = 0 -- FALSE, not created
END CATCH 

----Seed the tblUser to test design----
BEGIN TRY
IF @Pass = 1 --true if table was created
BEGIN
	INSERT INTO tblUser 
	(fldUsername, fldUserPassword, fldUserFirstName, fldUserLastName, fldUserGender, fldUserAddress, fldUserEmailAddress )
	VALUES
	('thowar9', 'password', 'Tucker', 'Howard', '1', '123 Example St, Towson, MD', 'tho@gmail.com');
	
	INSERT INTO tblUser
	(fldUsername, fldUserPassword, fldUserFirstName, fldUserLastName, fldUserGender, fldUserAddress, fldUserEmailAddress )
	VALUES
	('ljames29', 'caveliers', 'Lebron', 'James', '1', '456 Block St, Portland, OR', 'thegoat@gmail.com'); 
	
	PRINT 'tblUser seeded'; 
	END
ELSE 
	PRINT 'tblUser NOT seeded'; 
END TRY
BEGIN CATCH 
	PRINT 'tblUser was NOT seeded'; 
END CATCH

-----------------------------------------------------------------------------------------
SET @pass = 1; 
----Drop Table tblFavorites and start fresh----
IF exists(select * from sys.objects where name = 'tblFavorites')
BEGIN
	drop table tblFavorites; 
END

----New table tblFavorites to create----
BEGIN TRY
CREATE TABLE tblFavorites (
fldUser_ID INT NOT NULL REFERENCES tblUser (fldUserID),
fldCourt_ID INT NOT NULL REFERENCES tblCourt (fldCourtID));

PRINT 'tblFavorites created';
END TRY
BEGIN CATCH
	PRINT 'tblFavorites was NOT created'; 
	Set @pass = 0 -- FALSE, not created
END CATCH 

----Seed the tblUser to test design----
BEGIN TRY
IF @Pass = 1 --true if table was created
BEGIN
	INSERT INTO tblFavorites 
	(fldUser_ID, fldCourt_ID )
	VALUES
	('1', '1' );
	
	INSERT INTO tblFavorites
	(fldUser_ID, fldCourt_ID )
	VALUES
	('2', '2' ); 

	PRINT 'tblFavorites seeded'; 
	END
ELSE 
	PRINT 'tblFavorites NOT seeded'; 
END TRY
BEGIN CATCH 
	PRINT 'tblFavorites was NOT seeded'; 
END CATCH
