CREATE TABLE [dbo].[RuralDistricts](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[OstanId] [int] NOT NULL,
	[ShahrestanId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[AmarCode] [bigint] NOT NULL,
	[CenterVillageId] [int] NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[ProvinceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RuralDistricts] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[RuralDistricts] ADD  DEFAULT (getdate()) FOR [UpdatedAt]