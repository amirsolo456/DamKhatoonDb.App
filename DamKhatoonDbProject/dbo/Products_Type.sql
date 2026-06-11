CREATE TABLE [dbo].[Products_Type] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (100) NOT NULL,
    [Unit]      NVARCHAR (MAX) NOT NULL,
    [Code]      INT            CONSTRAINT [DF_Products_Type_Code] DEFAULT ((1)) NOT NULL,
    [ParentId]  INT            NULL,
    [IsDeleted] BIT            CONSTRAINT [DF_Products_Type_IsDeleted] DEFAULT ((0)) NOT NULL,
    [CreatedAt] DATETIME2 (7)  CONSTRAINT [DF_Products_Type_CreatedAt] DEFAULT (getdate()) NOT NULL,
    [UpdatedAt] DATETIME2 (7)  CONSTRAINT [DF_Products_Type_UpdatedAt] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Products_Type] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Products_Type_Parent] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Products_Type] ([Id])
);


GO

