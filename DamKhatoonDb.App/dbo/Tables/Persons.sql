CREATE TABLE [dbo].[Persons] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [PersonType]         NVARCHAR (20)  NOT NULL,
    [FirstName]          NVARCHAR (100) NULL,
    [LastName]           NVARCHAR (100) NULL,
    [CompanyName]        NVARCHAR (200) NULL,
    [NationalId]         NVARCHAR (20)  NULL,
    [EconomicCode]       NVARCHAR (20)  NULL,
    [RegistrationNumber] NVARCHAR (20)  NULL,
    [Phone]              NVARCHAR (20)  NULL,
    [Mobile]             NVARCHAR (20)  NULL,
    [Email]              NVARCHAR (100) NULL,
    [Address]            NVARCHAR (500) NULL,
    [PostalCode]         NVARCHAR (20)  NULL,
    [City]               NVARCHAR (100) NULL,
    [Province]           NVARCHAR (100) NULL,
    [IsActive]           BIT            DEFAULT ((1)) NOT NULL,
    [Notes]              NVARCHAR (MAX) NULL,
    [CreatedAt]          DATETIME       DEFAULT (getutcdate()) NOT NULL,
    [UpdatedAt]          DATETIME       DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([PersonType]='Legal' OR [PersonType]='Natural')
);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_PersonType]
    ON [dbo].[Persons]([PersonType] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_FirstName_LastName]
    ON [dbo].[Persons]([FirstName] ASC, [LastName] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_CompanyName]
    ON [dbo].[Persons]([CompanyName] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_NationalId]
    ON [dbo].[Persons]([NationalId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_Mobile]
    ON [dbo].[Persons]([Mobile] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_Email]
    ON [dbo].[Persons]([Email] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Persons_IsActive]
    ON [dbo].[Persons]([IsActive] ASC);

