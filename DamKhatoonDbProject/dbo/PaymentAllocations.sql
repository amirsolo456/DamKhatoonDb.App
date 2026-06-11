CREATE TABLE [dbo].[PaymentAllocations] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [PaymentId]       INT             NOT NULL,
    [InvoiceId]       INT             NOT NULL,
    [AmountAllocated] DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [CreatedAt]       DATETIME        DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]       DATETIME        DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_PaymentAllocations_PaymentId]
    ON [dbo].[PaymentAllocations]([PaymentId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_PaymentAllocations_InvoiceId]
    ON [dbo].[PaymentAllocations]([InvoiceId] ASC);


GO

