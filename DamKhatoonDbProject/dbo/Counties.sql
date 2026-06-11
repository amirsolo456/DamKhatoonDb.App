CREATE TABLE [dbo].[Counties] (
    [Id]       INT            NOT NULL,
    [Name]     NVARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [OstanId]  INT            NOT NULL,
    [AmarCode] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

