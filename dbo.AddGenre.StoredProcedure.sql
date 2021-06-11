USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddGenre]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddGenre]
					@GenreCode char(2)
,					@GenreName varchar(50)
AS
INSERT INTO Genres
VALUES (@GenreCode, @GenreName)
GO
