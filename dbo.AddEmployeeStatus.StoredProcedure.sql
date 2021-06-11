USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddEmployeeStatus]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddEmployeeStatus] 
					@StatusCode char(2)
,					@StatusDescription varchar(50)
AS
INSERT INTO EmployeeStatus 
VALUES		(@StatusCode,@StatusDescription)
GO
