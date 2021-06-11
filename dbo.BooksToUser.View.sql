USE [DylanOchoaLibraryDB]
GO
/****** Object:  View [dbo].[BooksToUser]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BooksToUser] AS
SELECT	b.BookTitle
,		a.PenName AS Author
,		b.IsPartOfSeries
,		b.ISBN
,		b.PublisherName AS Publisher
,		i.RentCost
,		i.RentOverdueDailyCharge
,		i.PurchaseCost
,		l.LibraryName
,       o.[Address] + ' ' + o.City + ' ' + o.Country AS LibraryLocation
FROM	Libraries l, Locations o, Inventory i, Books b, Authors a
WHERE	i.LibraryID = l.LibraryID
AND		l.LocationID = o.LocationID
AND		b.ISBN = i.ISBN
AND		b.AuthorID = a.AuthorID
GO
