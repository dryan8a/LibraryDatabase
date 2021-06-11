USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddRentedBooks]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddRentedBooks]
	@UserID			char(8)
,	@ISBN			char(8)
,	@LibraryID		char(8)
,	@DateRented		date
,	@DateToReturn	date
,	@Quantity		smallint

as
DECLARE @Amount int
SELECT @Amount = Quantity
FROM Inventory
WHERE ISBN = @ISBN
IF(@Amount >= @Quantity)
	BEGIN
		INSERT INTO RentedBooks
		VALUES (@UserID,@ISBN,@LibraryID,@DateRented,@DateToReturn,@Quantity)
	END;
ELSE
	BEGIN
		PRINT 'Not enough books in stock'
	END;
GO
