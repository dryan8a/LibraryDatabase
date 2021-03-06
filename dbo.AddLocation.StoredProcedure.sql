USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddLocation]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLocation]
	@LocationID			char(8)
,	@RoomNum			char(5)
,	@Address			varchar(50)
,	@City				varchar(50)
,	@StateOrProvince	varchar(50)
,	@Country			char(2)
AS
INSERT INTO Locations
VALUES (@LocationID,@RoomNum,@Address,@City,@StateOrProvince,@Country)
GO
