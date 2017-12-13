BEGIN
	INSERT INTO tblCourt 
	(fldCourtName, fldCourtCapacity, fldCourtFullSize, fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('Towson U Gym', '50', 'TRUE', '7800 York Rd', '0', 'Towson'); 

	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('Lifetime Fitness', '40', '1', '600 Goucher Rd', '1', 'East Baltimore'); 

	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('Golds Gym', '20', '0', '25 Baltimore St', '1', 'East Baltimore');

	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('Lifetime Fitness', '40', '1', '600 Goucher Rd', '1', 'East Baltimore');

	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('YMCA', '30', '1', '233 Liberty Rd', '1', 'Eldersburg');

	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('Champs Gym', '20', '0', '68 Oakes Blvd', '1', 'Eldersburg');

	INSERT INTO tblCourt
	(fldCourtName, fldCourtCapacity, fldCourtFullSize,fldCourtAddress, fldCourtParkingAvailable, fldCourtZone )
	VALUES
	('Storkton High', '60', '1', '11 Luther St', '1', 'West Baltimore');
	
	PRINT 'tblCourt seeded'; 
END