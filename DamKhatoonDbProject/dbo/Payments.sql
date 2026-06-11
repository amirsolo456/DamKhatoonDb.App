CREATE TABLE [dbo].[Payments] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [Amount]        DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [Direction]     NVARCHAR (20)   NOT NULL,
    [PaymentMethod] NVARCHAR (50)   NULL,
    [FromPersonId]  INT             NULL,
    [CreatedAt]     DATETIME        DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]     DATETIME        DEFAULT (getdate()) NOT NULL,
    [ToPersonId]    INT             NULL,
    [Reference]     NVARCHAR (100)  NULL,
    [Notes]         NVARCHAR (MAX)  NULL,
    [InvoiceId]     INT             NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([Direction]='Outgoing' OR [Direction]='Incoming')
);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_FromPersonId]
    ON [dbo].[Payments]([FromPersonId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_InvoiceId]
    ON [dbo].[Payments]([InvoiceId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_CreatedAt]
    ON [dbo].[Payments]([CreatedAt] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_Direction]
    ON [dbo].[Payments]([Direction] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_ToPersonId]
    ON [dbo].[Payments]([ToPersonId] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_PaymentMethod]
    ON [dbo].[Payments]([PaymentMethod] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Payments_Reference]
    ON [dbo].[Payments]([Reference] ASC);


GO

