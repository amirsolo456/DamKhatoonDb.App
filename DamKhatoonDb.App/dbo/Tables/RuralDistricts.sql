CREATE TABLE [dbo].[RuralDistricts] (
    [Id]              INT            NOT NULL,
    [Name]            NVARCHAR (100) NOT NULL,
    [OstanId]         INT            NOT NULL,
    [ShahrestanId]    INT            NOT NULL,
    [DistrictId]      INT            NOT NULL,
    [AmarCode]        BIGINT         NOT NULL,
    [CenterVillageId] INT            NULL,
    [CreatedAt]       DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]       DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [ProvinceId]      INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

