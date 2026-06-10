CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Direction] [nvarchar](20) NOT NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[FromPersonId] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[ToPersonId] [int] NULL,
	[Reference] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[InvoiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
CREATE NONCLUSTERED INDEX [IX_Payments_Direction]
    ON [dbo].[Payments]([Direction] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_FromPersonId]
    ON [dbo].[Payments]([FromPersonId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_ToPersonId]
    ON [dbo].[Payments]([ToPersonId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_InvoiceId]
    ON [dbo].[Payments]([InvoiceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_PaymentMethod]
    ON [dbo].[Payments]([PaymentMethod] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_CreatedAt]
    ON [dbo].[Payments]([CreatedAt] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_Reference]
    ON [dbo].[Payments]([Reference] ASC);


GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD CHECK  (([Direction]='Outgoing' OR [Direction]='Incoming'))