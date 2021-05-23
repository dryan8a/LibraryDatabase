USE [DylanOchoaLibraryDB]
GO
/****** Object:  View [dbo].[EmployeeToManagers]    Script Date: 5/23/2021 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EmployeeToManagers] AS
SELECT		e.FirstName + ' ' + ISNULL(e.MiddleNames,'') + ' ' + e.LastName + ' ' + ISNULL(e.Suffix,'') AS FullName
,			s.StatusDescription
,			l.LibraryName
,			o.EmployeeUserName
,			o.LoginAuthCode
,			e.WeeklySalary
,			e.CurrentWeekHours
,			e.Email
,			e.PhoneNumber
FROM		Employees e, EmployeeStatus s, Libraries l, EmployeeLogins o
WHERE		e.EmployingLibraryID = l.LibraryID
AND			e.EmployeeStatusID = s.EmployeeStatusID
AND			e.EmployeeLoginID = o.EmployeeLoginID
GO
