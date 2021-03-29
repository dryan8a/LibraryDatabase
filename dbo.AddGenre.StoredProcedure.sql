USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddGenre]    Script Date: 3/28/2021 8:30:46 PM ******/
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
