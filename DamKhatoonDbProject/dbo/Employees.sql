CREATE TABLE [dbo].[Employees] (
    [Id]                INT             IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (200)  NOT NULL,
    [Role]              NVARCHAR (100)  NULL,
    [SalaryAmount]      DECIMAL (18, 2) NULL,
    [IsCommissioned]    BIT             DEFAULT ((0)) NOT NULL,
    [CommissionPercent] DECIMAL (5, 2)  NULL,
    [Notes]             NVARCHAR (MAX)  NULL,
    [CreatedAt]         DATETIME        DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]         DATETIME        DEFAULT (getdate()) NOT NULL,
    [Version]           INT             DEFAULT ((1)) NOT NULL,
    [IsDeleted]         BIT             DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_Employees_Name]
    ON [dbo].[Employees]([Name] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Employees_Role]
    ON [dbo].[Employees]([Role] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Employees_IsDeleted]
    ON [dbo].[Employees]([IsDeleted] ASC);


GO

