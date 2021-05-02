CREATE TABLE [dbo].[Persons]
(
	[fname] VARCHAR(30),
	[lname] VARCHAR(30),
	[bdate] DATE,
	[bplace] VARCHAR(30),
	[address] TEXT,
	[phone] VARCHAR(14),
	CONSTRAINT Persons_pkey PRIMARY KEY (fname, lname, bdate)
)
