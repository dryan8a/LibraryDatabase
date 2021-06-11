USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddEmployee]
	@EmployeeID				char(8)
,	@EmployeeLoginID		char(8)
,	@WeeklySalary			money
,	@CurrentWeeklyHours		int
,	@EmployingLibraryID		char(8)
,	@EmployeeStatusID		char(2)
,	@FirstName				varchar(50)
,	@LastName				varchar(50)
,	@MiddleNames			varchar(50)
,	@Suffix					varchar(10)
,	@Email					varchar(50)
,	@PhoneNumber			varchar(15)
as
INSERT INTO Employees
VALUES (@EmployeeID,@EmployeeLoginID,@WeeklySalary,@CurrentWeeklyHours,@EmployingLibraryID,@EmployeeStatusID,@FirstName,@LastName,@MiddleNames,@Suffix,@Email,@PhoneNumber)
GO
