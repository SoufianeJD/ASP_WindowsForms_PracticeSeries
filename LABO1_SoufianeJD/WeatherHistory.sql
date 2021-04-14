CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [reportdate] DATETIME NULL, 
    [location] NCHAR(50) NULL, 
    [hightemp] FLOAT NULL, 
    [lowtemp] FLOAT NULL, 
    [rainfall] FLOAT NULL, 
    [snowfall] FLOAT NULL, 
    [description] NVARCHAR(MAX) NULL
)
