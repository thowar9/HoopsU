CREATE PROCEDURE sprGetFavoritesByUsername	

	@fldUsername nvarchar (15)
AS
	SELECT * FROM tblCourt x
	WHERE x.fldCourtID = (SELECT fldCourtID FROM tblFavorites y
							WHERE y.fldUser_ID = (SELECT fldUserID FROM tblUser u
													WHERE u.fldUsername = @fldUsername)
							)