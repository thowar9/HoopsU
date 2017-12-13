CREATE PROCEDURE dbo.sprAddUser
/*input parameters*/
	@fldUsername nvarchar(15), 
	@fldUserPassword nvarchar(15), 
	@fldUserFirstName nvarchar (15), 
	@fldUserLastName nvarchar (30), 
	@fldUserGender bit, 
	@fldUserAddress nvarchar (30),
	@fldUserEmailAddress nvarchar (50)
AS
	INSERT INTO tblUser (fldUsername, fldUserPassword, 
	fldUserFirstName, fldUserLastName, fldUserGender, 
	fldUserAddress, fldUserEmailAddress )
	VALUES (@fldUsername, @fldUserPassword, @fldUserFirstName, 
	@fldUserLastName, @fldUserGender, @fldUserAddress, 
	@fldUserEmailAddress )

RETURN @@identity

