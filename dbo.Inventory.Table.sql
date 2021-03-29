USE [Library]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 3/28/2021 5:06:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[LibraryID] [char](8) NOT NULL,
	[ISBN] [char](13) NOT NULL,
	[Quantity] [int] NOT NULL,
	[RentCost] [money] NOT NULL,
	[PurchaseCost] [money] NULL,
	[RentOverdueDailyCharge] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [ISBN] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Books] ([ISBN])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [ISBN]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [LibraryID] FOREIGN KEY([LibraryID])
REFERENCES [dbo].[Libraries] ([LibraryID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [LibraryID]
GO
