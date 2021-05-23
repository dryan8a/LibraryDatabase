USE [DylanOchoaLibraryDB]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 5/23/2021 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[UserID] [char](8) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[PasswordHash] [binary](60) NOT NULL,
	[TwoFactorAuth] [bit] NOT NULL,
 CONSTRAINT [PK_UserLoginData] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [LoginDataToUserDataID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserData] ([UserID])
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [LoginDataToUserDataID]
GO
