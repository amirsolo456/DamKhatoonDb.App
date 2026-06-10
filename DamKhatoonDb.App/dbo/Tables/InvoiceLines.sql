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
CREATE NONCLUSTERED INDEX [IX_InvoiceLines_InvoiceId]
    ON [dbo].[InvoiceLines]([InvoiceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InvoiceLines_ProductId]
    ON [dbo].[InvoiceLines]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InvoiceLines_PersonId]
    ON [dbo].[InvoiceLines]([PersonId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InvoiceLines_SellerEmployeeId]
    ON [dbo].[InvoiceLines]([SellerEmployeeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_InvoiceLines_IsDeleted]
    ON [dbo].[InvoiceLines]([IsDeleted] ASC);


GO
ALTER TABLE [dbo].[InvoiceLines]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLines_Persons] FOREIGN KEY([Id])
REFERENCES [dbo].[Persons] ([Id])
GO

ALTER TABLE [dbo].[InvoiceLines] CHECK CONSTRAINT [FK_InvoiceLines_Persons]
GO
ALTER TABLE [dbo].[InvoiceLines]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLines_Invoices] FOREIGN KEY([Id])
REFERENCES [dbo].[Invoices] ([Id])
GO

ALTER TABLE [dbo].[InvoiceLines] CHECK CONSTRAINT [FK_InvoiceLines_Invoices]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD  DEFAULT ((0)) FOR [LineTotal]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[InvoiceLines] ADD  DEFAULT (getdate()) FOR [UpdatedAt]