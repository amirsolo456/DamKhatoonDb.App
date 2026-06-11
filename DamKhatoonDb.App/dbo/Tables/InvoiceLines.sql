USE [DamKhatoonDb]
GO

/****** Object:  Table [dbo].[InvoiceLines]    Script Date: 6/10/2026 8:11:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InvoiceLines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[LineTotal] [decimal](18, 2) NOT NULL,
	[PersonId] [int] NULL,
	[SellerEmployeeId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD CONSTRAINT [FK_InvoiceLines_Persons] FOREIGN KEY([PersonId]) REFERENCES [dbo].[Persons]([Id]);
ALTER TABLE [dbo].[InvoiceLines] ADD CONSTRAINT [FK_InvoiceLines_Invoices] FOREIGN KEY([InvoiceId]) REFERENCES [dbo].[Invoices]([Id]);