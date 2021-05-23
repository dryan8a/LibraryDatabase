USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 5/23/2021 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [char](8) NOT NULL,
	[RoomNum] [char](5) NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[StateOrProvince] [varchar](50) NULL,
	[Country] [char](2) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
