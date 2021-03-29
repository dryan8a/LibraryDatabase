USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[Libraries]    Script Date: 3/28/2021 8:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libraries](
	[LibraryID] [char](8) NOT NULL,
	[LibraryName] [varchar](50) NOT NULL,
	[LocationID] [char](8) NOT NULL,
 CONSTRAINT [PK_Libraries] PRIMARY KEY CLUSTERED 
(
	[LibraryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Libraries]  WITH CHECK ADD  CONSTRAINT [LibraryLocationIDToLocation] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Libraries] CHECK CONSTRAINT [LibraryLocationIDToLocation]
GO
