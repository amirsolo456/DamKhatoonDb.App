CREATE TABLE [dbo].[Villages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[AbadiType] [nvarchar](50) NULL,
	[Diag] [int] NULL,
	[OstanId] [int] NOT NULL,
	[ShahrestanId] [int] NOT NULL,
	[BakhshId] [int] NOT NULL,
	[DehestanId] [int] NOT NULL,
	[AmarCode] [bigint] NULL,
	[IsCenter] [bit] NULL,
	[Population] [int] NULL,
	[Households] [int] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Villages] ADD  DEFAULT ((0)) FOR [IsCenter]
GO
ALTER TABLE [dbo].[Villages] ADD  DEFAULT (getdate()) FOR [CreatedAt]