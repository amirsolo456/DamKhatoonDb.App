CREATE TABLE [dbo].[Invoices] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [InvoiceNo]        NVARCHAR (50)   NOT NULL,
    [Type]             NVARCHAR (20)   DEFAULT ('Sale') NOT NULL,
    [SellerEmployeeId] INT             NULL,
    [TotalAmount]      DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [Status]           NVARCHAR (50)   NOT NULL,
    [Notes]            NVARCHAR (MAX)  NULL,
    [IsDeleted]        BIT             DEFAULT ((0)) NOT NULL,
    [CreatedAt]        DATETIME        DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]        DATETIME        DEFAULT (getdate()) NOT NULL,
    [Version]          DECIMAL (18, 2) DEFAULT ((1)) NOT NULL,
    [PersonId]         INT             NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Invoices_Employees] FOREIGN KEY ([SellerEmployeeId]) REFERENCES [dbo].[Employees] ([Id]),
    CONSTRAINT [FK_Invoices_Persons] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Persons] ([Id])
);


GO

CREATE NONCLUSTERED INDEX [IX_Invoices_InvoiceNo]
    ON [dbo].[Invoices]([InvoiceNo] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Invoices_IsDeleted]
    ON [dbo].[Invoices]([IsDeleted] ASC);


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

