USE [Library]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 3/28/2021 5:06:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[UserID] [char](8) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleNames] [varchar](50) NULL,
	[Suffix] [varchar](10) NULL,
	[Guardian1ID] [char](8) NULL,
	[Guardian2ID] [char](8) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[Email] [varchar](50) NOT NULL,
	[AmountOwed] [money] NOT NULL,
	[ShippingLocationID] [char](8) NOT NULL,
 CONSTRAINT [PK_UserData] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserData]  WITH CHECK ADD  CONSTRAINT [Guardian1ID] FOREIGN KEY([Guardian1ID])
REFERENCES [dbo].[UserData] ([UserID])
GO
ALTER TABLE [dbo].[UserData] CHECK CONSTRAINT [Guardian1ID]
GO
ALTER TABLE [dbo].[UserData]  WITH CHECK ADD  CONSTRAINT [Guardian2ID] FOREIGN KEY([Guardian2ID])
REFERENCES [dbo].[UserData] ([UserID])
GO
ALTER TABLE [dbo].[UserData] CHECK CONSTRAINT [Guardian2ID]
GO
ALTER TABLE [dbo].[UserData]  WITH CHECK ADD  CONSTRAINT [ShippingIDToLocation] FOREIGN KEY([ShippingLocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[UserData] CHECK CONSTRAINT [ShippingIDToLocation]
GO
