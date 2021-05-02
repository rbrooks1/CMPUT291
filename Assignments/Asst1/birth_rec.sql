CREATE TABLE [dbo].[birth_rec]
(
	[regno] INT,
	[fname] TEXT,
	[lname] TEXT,
	[bdate] DATE,
	PRIMARY KEY (lname, bdate, fname, regno),
	FOREIGN KEY (fname, lname, bdate) REFERENCES Persons,
	FOREIGN KEY (regno) REFERENCES Births
)
