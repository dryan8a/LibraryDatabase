USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddUserData]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddUserData]
	@UserID			char(8)
,	@FirstName		varchar(50)
,	@LastName		varchar(50)
,	@MiddleNames	varchar(50)
,	@Suffix			varchar(10)
,	@Guardian1ID	char(8)
,	@Guardian2ID	char(8)
,	@PhoneNumber	varchar(15)
,	@Email			varchar(50)
,	@AmountOwed		money
,	@ShippingLocationID	char(8)

as
INSERT INTO UserData
VALUES (@UserID,@FirstName,@LastName,@MiddleNames,@Suffix,@Guardian1ID,@Guardian2ID,@PhoneNumber,@Email,@AmountOwed,@ShippingLocationID)
GO
