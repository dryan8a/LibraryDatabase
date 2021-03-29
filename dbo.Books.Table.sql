USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 3/28/2021 8:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookTitle] [varchar](50) NOT NULL,
	[ISBN] [char](13) NOT NULL,
	[AuthorID] [char](8) NOT NULL,
	[IsPartOfSeries] [bit] NOT NULL,
	[PublisherName] [varchar](50) NOT NULL,
	[GenreID] [char](2) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [AuthorID] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([AuthorID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [AuthorID]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [GenreID] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([GenreID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [GenreID]
GO
