USE [DylanOchoaLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddInventory]    Script Date: 6/10/2021 7:01:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddInventory]
	@LibraryID				char(8)
,	@ISBN					char(13)
,	@Quantity				int
,	@RentCost				money
,	@PurchaseCost			money
,	@RentOverdueDailyCharge money
as
INSERT INTO Inventory
VALUES (@LibraryID,@ISBN,@Quantity,@RentCost,@PurchaseCost,@RentOverdueDailyCharge)
GO
