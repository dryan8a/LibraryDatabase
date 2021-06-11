USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddLibrary]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddLibrary]
	@LibraryID		char(8)
,	@LibraryName	varchar(50)
,	@LocationID		CHAR(8)
as
INSERT INTO Libraries
VALUES (@LibraryID,@LibraryName,@LocationID)
GO
