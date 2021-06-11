USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddEmployeeLogin]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddEmployeeLogin]
	@EmployeeLoginID		char(8)
,	@EmployeeUserName		varchar(50)
,	@PasswordHash			char(8)
,	@LoginAuthCode			char(8)
as
INSERT INTO EmployeeLogins
VALUES (@EmployeeLoginID,@EmployeeUserName,@PasswordHash,@LoginAuthCode)
GO
