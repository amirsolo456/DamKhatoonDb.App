CREATE TABLE [dbo].[Villages] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (200) NOT NULL,
    [AbadiType]    NVARCHAR (50)  NULL,
    [Diag]         INT            NULL,
    [OstanId]      INT            NOT NULL,
    [ShahrestanId] INT            NOT NULL,
    [BakhshId]     INT            NOT NULL,
    [DehestanId]   INT            NOT NULL,
    [AmarCode]     BIGINT         NULL,
    [IsCenter]     BIT            DEFAULT ((0)) NULL,
    [Population]   INT            NULL,
    [Households]   INT            NULL,
    [Latitude]     FLOAT (53)     NULL,
    [Longitude]    FLOAT (53)     NULL,
    [CreatedAt]    DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

