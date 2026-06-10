CREATE TABLE [dbo].[City] (
    [Id]         INT            NOT NULL,
    [Name]       NVARCHAR (100) NULL,
    [CityType]   INT            CONSTRAINT [DF__City__CityType__55009F39] DEFAULT ((0)) NOT NULL,
    [ProvinceId] INT            NULL,
    [CountyId]   INT            NULL,
    [DistrictId] INT            NULL,
    [AmarCode]   NVARCHAR (50)  NULL,
    CONSTRAINT [PK__City__3214EC07BC7E8948] PRIMARY KEY CLUSTERED ([Id] ASC)
);

