--CREATE DATABASE [TMDTThucAnNhanh]

USE [TMDTThucAnNhanh]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[numberPhone] [varchar](20) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[priority] [bit] NOT NULL,
	[note] [nvarchar](500) NOT NULL,
	[userID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminUser]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nameUser] [varchar](50) NOT NULL,
	[roleUser] [int] NOT NULL,
	[passWord] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdminUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[nameType] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[comboID] [int] NOT NULL,
	[nameCombo] [nvarchar](500) NOT NULL,
	[price] [money] NOT NULL,
	[sale] [int] NOT NULL,
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[comboID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboDetail]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboDetail](
	[comboID] [int] NOT NULL,
	[cateID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[sizeUP] [bit] NULL,
 CONSTRAINT [PK_ComboDetail] PRIMARY KEY CLUSTERED 
(
	[comboID] ASC,
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condition]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condition](
	[conditionID] [int] IDENTITY(1,1) NOT NULL,
	[nameCon] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Condition] PRIMARY KEY CLUSTERED 
(
	[conditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[positionID] [int] NOT NULL,
	[imgEP] [nvarchar](1000) NULL,
	[numberPhone] [varchar](20) NULL,
	[locationID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[ingID] [int] IDENTITY(1,1) NOT NULL,
	[ingName] [nvarchar](250) NOT NULL,
	[quantity] [float] NOT NULL,
	[unitID] [int] NOT NULL,
	[quantityMin] [float] NOT NULL,
	[arrivalDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[ingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceID] [int] NOT NULL,
	[dateArrival] [datetime2](7) NOT NULL,
	[potal] [money] NOT NULL,
	[supplier] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_PurchaseInvoice] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[invoiceID] [int] IDENTITY(1,1) NOT NULL,
	[ingID] [int] NOT NULL,
	[quatity] [float] NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_PurchaseInvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC,
	[ingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[locationID] [int] NOT NULL,
	[StreetAddress] [nvarchar](100) NULL,
	[Ward] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] NOT NULL,
	[numberPhone] [varchar](20) NOT NULL,
	[datetime] [datetime2](7) NOT NULL,
	[note] [nvarchar](500) NULL,
	[conditionID] [int] NOT NULL,
	[total] [money] NOT NULL,
	[employeeID] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[comboID] [int] NOT NULL,
	[orderID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[comboID] ASC,
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] NOT NULL,
	[posName] [nvarchar](50) NOT NULL,
	[Description] [text] NOT NULL,
	[SalaryRange] [money] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[cateID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[price] [money] NOT NULL,
	[image] [nvarchar](1500) NOT NULL,
	[typeID] [int] NOT NULL,
	[priceUp] [money] NOT NULL,
 CONSTRAINT [PK_FoodAndDrink] PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[ingID] [int] NOT NULL,
	[cateID] [int] NOT NULL,
	[quantity] [float] NOT NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[ingID] ASC,
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[unitID] [int] IDENTITY(1,1) NOT NULL,
	[nameU] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[unitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[numberPhone] [varchar](20) NOT NULL,
	[gmail] [varchar](200) NULL,
	[password] [varchar](50) NULL,
	[fullName] [nvarchar](200) NULL,
	[bDay] [datetime2](7) NULL,
	[gender] [bit] NULL,
	[addressID] [int] NULL,
	[permission] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[numberPhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([numberPhone])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_User]
GO
ALTER TABLE [dbo].[ComboDetail]  WITH CHECK ADD  CONSTRAINT [FK_ComboDetail_Combo] FOREIGN KEY([comboID])
REFERENCES [dbo].[Combo] ([comboID])
GO
ALTER TABLE [dbo].[ComboDetail] CHECK CONSTRAINT [FK_ComboDetail_Combo]
GO
ALTER TABLE [dbo].[ComboDetail]  WITH CHECK ADD  CONSTRAINT [FK_ComboDetail_FoodAndDrink] FOREIGN KEY([cateID])
REFERENCES [dbo].[Product] ([cateID])
GO
ALTER TABLE [dbo].[ComboDetail] CHECK CONSTRAINT [FK_ComboDetail_FoodAndDrink]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_location] FOREIGN KEY([locationID])
REFERENCES [dbo].[location] ([locationID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_location]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Position]
GO
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Unit] FOREIGN KEY([unitID])
REFERENCES [dbo].[Unit] ([unitID])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Unit]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseInvoiceDetails_Ingredient] FOREIGN KEY([ingID])
REFERENCES [dbo].[Ingredient] ([ingID])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_PurchaseInvoiceDetails_Ingredient]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseInvoiceDetails_PurchaseInvoice] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[Invoice] ([invoiceID])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_PurchaseInvoiceDetails_PurchaseInvoice]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Condition] FOREIGN KEY([conditionID])
REFERENCES [dbo].[Condition] ([conditionID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Condition]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Employees] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Employees]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([numberPhone])
REFERENCES [dbo].[User] ([numberPhone])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Combo] FOREIGN KEY([comboID])
REFERENCES [dbo].[Combo] ([comboID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Combo]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_FoodAndDrink_ProductType] FOREIGN KEY([typeID])
REFERENCES [dbo].[Category] ([typeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_FoodAndDrink_ProductType]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_FoodAndDrink] FOREIGN KEY([cateID])
REFERENCES [dbo].[Product] ([cateID])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_FoodAndDrink]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient] FOREIGN KEY([ingID])
REFERENCES [dbo].[Ingredient] ([ingID])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient]
GO
/****** Object:  StoredProcedure [dbo].[AddProductAndCombo]    Script Date: 10/22/2023 12:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddProductAndCombo]
(
    @name nvarchar(500),
    @price money,
    @image nvarchar(1500),
    @typeID int,
    @priceUp money
)
AS
BEGIN
    BEGIN TRANSACTION; -- Bắt đầu giao dịch

    BEGIN TRY
        -- Thêm dữ liệu vào bảng Product
        INSERT INTO [dbo].[Product] ([name], [price], [image], [typeID], [priceUp])
        VALUES (@name, @price, @image, @typeID, @priceUp);

        -- Lấy giá trị ID mới của sản phẩm
        DECLARE @IDProduct INT;
        SET @IDProduct = SCOPE_IDENTITY();

        -- Tìm ID lớn nhất trong bảng Combo hoặc mặc định là 1 nếu không có dòng nào
        DECLARE @newComboID INT;
        SELECT @newComboID = ISNULL(MAX(comboID), 0) + 1 
		FROM [dbo].[Combo];

        -- Thêm dữ liệu vào bảng Combo
        INSERT INTO [dbo].[Combo] 
		([comboID], [nameCombo], [price], [sale])
        VALUES 
		(@newComboID, @name, @price, 0),
		(@newComboID + 1, @name + ' UP', @price + @priceUp, 0);

        -- Thêm dữ liệu vào bảng ComboDetail
        INSERT INTO [dbo].[ComboDetail] ([comboID], [cateID], [quantity], [sizeUP])
        VALUES 
        (@newComboID, @IDProduct, 1, 0),
        (@newComboID + 1, @IDProduct, 1, 1);

        PRINT 'ID của product là: ' + CAST(@IDProduct AS NVARCHAR(MAX)) + ' và ID của combo lần lượt là ' + CAST(@newComboID AS NVARCHAR(MAX)) + ' và ' + CAST((@newComboID + 1) AS NVARCHAR(MAX));
        PRINT 'Thêm thành công';
        
        COMMIT; -- Nếu thành công, thì xác nhận giao dịch
    END TRY
    BEGIN CATCH
        PRINT 'Lỗi xảy ra: ' + ERROR_MESSAGE();
        ROLLBACK ; -- Nếu xảy ra lỗi, thì hoàn tác giao dịch
    END CATCH;

    -- Kết thúc giao dịch
END;
GO
