CREATE TABLE [dbo].[PaymentAllocations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentId] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[AmountAllocated] [decimal](18, 2) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
CREATE NONCLUSTERED INDEX [IX_PaymentAllocations_PaymentId]
    ON [dbo].[PaymentAllocations]([PaymentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PaymentAllocations_InvoiceId]
    ON [dbo].[PaymentAllocations]([InvoiceId] ASC);


GO
ALTER TABLE [dbo].[PaymentAllocations] ADD  DEFAULT ((0)) FOR [AmountAllocated]
GO
ALTER TABLE [dbo].[PaymentAllocations] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[PaymentAllocations] ADD  DEFAULT (getdate()) FOR [UpdatedAt]