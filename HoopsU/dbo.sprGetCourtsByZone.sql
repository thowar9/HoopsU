CREATE PROCEDURE dbo.sprGetCourtsByZone

	@fldCourtZone nvarchar(30)
AS
	SELECT * FROM tblCourt
	WHERE @fldCourtZone = fldCourtZone