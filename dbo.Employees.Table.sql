USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/28/2021 8:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [char](8) NOT NULL,
	[EmployeeLoginID] [char](8) NOT NULL,
	[WeeklySalary] [money] NOT NULL,
	[CurrentWeekHours] [int] NOT NULL,
	[EmployingLibraryID] [char](8) NOT NULL,
	[EmployeeStatusID] [char](2) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleNames] [varchar](50) NULL,
	[Suffix] [varchar](10) NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](15) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [EmployeeLibrary] FOREIGN KEY([EmployingLibraryID])
REFERENCES [dbo].[Libraries] ([LibraryID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [EmployeeLibrary]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [EmployeeLogin] FOREIGN KEY([EmployeeLoginID])
REFERENCES [dbo].[EmployeeLogins] ([EmployeeLoginID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [EmployeeLogin]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [EmployeeStatusTable] FOREIGN KEY([EmployeeStatusID])
REFERENCES [dbo].[EmployeeStatus] ([EmployeeStatusID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [EmployeeStatusTable]
GO
