CREATE TABLE [dbo].[InvoiceLines] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [InvoiceId]        INT             NOT NULL,
    [ProductId]        INT             NULL,
    [Description]      NVARCHAR (500)  NULL,
    [Quantity]         DECIMAL (18, 2) DEFAULT ((1)) NOT NULL,
    [UnitPrice]        DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [LineTotal]        DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [PersonId]         INT             NULL,
    [SellerEmployeeId] INT             NULL,
    [IsDeleted]        BIT             DEFAULT ((0)) NOT NULL,
    [CreatedAt]        DATETIME        DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]        DATETIME        DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceLines_Invoices] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoices] ([Id]),
    CONSTRAINT [FK_InvoiceLines_Persons] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Persons] ([Id])
);


GO

CREATE NONCLUSTERED INDEX [IX_InvoiceLines_PersonId]
    ON [dbo].[InvoiceLines]([PersonId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_InvoiceLines_InvoiceId]
    ON [dbo].[InvoiceLines]([InvoiceId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_InvoiceLines_SellerEmployeeId]
    ON [dbo].[InvoiceLines]([SellerEmployeeId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_InvoiceLines_ProductId]
    ON [dbo].[InvoiceLines]([ProductId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_InvoiceLines_IsDeleted]
    ON [dbo].[InvoiceLines]([IsDeleted] ASC);


GO

