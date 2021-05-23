USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[RentedBooks]    Script Date: 5/23/2021 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentedBooks](
	[UserID] [char](8) NOT NULL,
	[ISBN] [char](13) NOT NULL,
	[LibraryID] [char](8) NOT NULL,
	[DateRented] [date] NOT NULL,
	[DateToReturn] [date] NOT NULL,
	[Quantity] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RentedBooks]  WITH CHECK ADD  CONSTRAINT [RentedToBookISBN] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Books] ([ISBN])
GO
ALTER TABLE [dbo].[RentedBooks] CHECK CONSTRAINT [RentedToBookISBN]
GO
ALTER TABLE [dbo].[RentedBooks]  WITH CHECK ADD  CONSTRAINT [RentedToLibraryID] FOREIGN KEY([LibraryID])
REFERENCES [dbo].[Libraries] ([LibraryID])
GO
ALTER TABLE [dbo].[RentedBooks] CHECK CONSTRAINT [RentedToLibraryID]
GO
ALTER TABLE [dbo].[RentedBooks]  WITH CHECK ADD  CONSTRAINT [RentedToUserDataID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserData] ([UserID])
GO
ALTER TABLE [dbo].[RentedBooks] CHECK CONSTRAINT [RentedToUserDataID]
GO
