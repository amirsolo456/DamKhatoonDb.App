CREATE TABLE [dbo].[Products] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (200)  NOT NULL,
    [Code]         NVARCHAR (50)   NULL,
    [Description]  NVARCHAR (MAX)  NULL,
    [Unit]         NVARCHAR (20)   NULL,
    [DefaultPrice] DECIMAL (18, 2) NULL,
    [Version]      INT             CONSTRAINT [DF_Products_Version] DEFAULT ((1)) NOT NULL,
    [IsDeleted]    BIT             CONSTRAINT [DF_Products_IsDeleted] DEFAULT ((0)) NOT NULL,
    [Price]        DECIMAL (18, 2) NULL,
    [Product_Code] INT             CONSTRAINT [DF_Products_Product_Code] DEFAULT ((1)) NOT NULL,
    [TypeId]       INT             CONSTRAINT [DF_Products_TypeId] DEFAULT ((0)) NOT NULL,
    [TypeName]     NVARCHAR (MAX)  NOT NULL,
    [CreatedAt]    DATETIME2 (7)   CONSTRAINT [DF_Products_CreatedAt] DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]    DATETIME2 (7)   CONSTRAINT [DF_Products_UpdatedAt] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Products_Products_Type] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[Products_Type] ([Id])
);


GO

