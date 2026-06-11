CREATE TABLE [dbo].[Districts] (
    [Id]         INT            NOT NULL,
    [Name]       NVARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ProvinceId] INT            NOT NULL,
    [CountyId]   INT            NOT NULL,
    [AmarCode]   NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__Districts__Province] FOREIGN KEY ([ProvinceId]) REFERENCES [dbo].[Provinces] ([Id]),
    CONSTRAINT [FK_Districts_Counties] FOREIGN KEY ([CountyId]) REFERENCES [dbo].[Counties] ([Id])
);


GO

