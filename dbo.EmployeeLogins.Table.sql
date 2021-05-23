USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[EmployeeLogins]    Script Date: 5/23/2021 4:28:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
