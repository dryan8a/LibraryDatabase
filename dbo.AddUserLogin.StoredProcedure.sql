USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddUserLogin]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddUserLogin]
	@UserID			char(8)
,	@Username		varchar(50)
,	@PasswordHash	char(8)
,	@TwoFactorAuth	bit
as
INSERT INTO UserLogins
VALUES (@UserID,@Username,@PasswordHash,@TwoFactorAuth)
GO
