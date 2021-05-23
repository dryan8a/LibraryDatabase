USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddEmployeeStatus]    Script Date: 5/23/2021 4:28:12 PM ******/
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
