USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddAuthor]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAuthor]
		@ID				char(8)
,		@PenName		varchar(50)
,		@FirstName		varchar(50)
,		@MiddleNames	varchar(50)
,		@LastName		varchar(50)
,		@Suffix			varchar(50)
AS
INSERT INTO Authors
VALUES	(@ID,@PenName,@FirstName,@LastName,@MiddleNames,@Suffix)
GO
