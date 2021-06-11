USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddBook]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddBook]
	@BookTitle		varchar(50)
,	@ISBN			char(13)
,	@AuthorID		char(8)
,	@IsPartOfSeries bit
,	@PublisherName	varchar(50)
,	@GenreID		char(2)
AS
INSERT INTO Books
VALUES (@BookTitle,@ISBN,@AuthorID,@IsPartOfSeries,@PublisherName,@GenreID)
GO
