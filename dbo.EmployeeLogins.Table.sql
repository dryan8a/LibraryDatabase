USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[EmployeeLogins]    Script Date: 3/28/2021 8:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLogins](
	[EmployeeLoginID] [char](8) NOT NULL,
	[EmployeeUserName] [varchar](50) NOT NULL,
	[PasswordHash] [char](8) NOT NULL,
	[LoginAuthCode] [char](8) NOT NULL,
 CONSTRAINT [PK_EmployeeLogins] PRIMARY KEY CLUSTERED 
(
	[EmployeeLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
