CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[SellerEmployeeId] [int] NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Version] [decimal](18, 2) NOT NULL,
	[PersonId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
CREATE NONCLUSTERED INDEX [IX_Invoices_InvoiceNo]
    ON [dbo].[Invoices]([InvoiceNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invoices_PersonId]
    ON [dbo].[Invoices]([PersonId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invoices_SellerEmployeeId]
    ON [dbo].[Invoices]([SellerEmployeeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invoices_Status]
    ON [dbo].[Invoices]([Status] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invoices_CreatedAt]
    ON [dbo].[Invoices]([CreatedAt] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invoices_IsDeleted]
    ON [dbo].[Invoices]([IsDeleted] ASC);


GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([Id])
GO

ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Persons]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Employees] FOREIGN KEY([SellerEmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO

ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Employees]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ('Sale') FOR [Type]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((1)) FOR [Version]