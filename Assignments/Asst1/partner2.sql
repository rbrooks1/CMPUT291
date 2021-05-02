CREATE TABLE [dbo].[partner2]
(
	[regno1] INT,
	[regno2] INT,
	PRIMARY KEY (regno1, regno2),
	FOREIGN KEY *regno1) REFERENCES Births,
	FOREIGN KEY (regno2) REFERENCES Marriages
)