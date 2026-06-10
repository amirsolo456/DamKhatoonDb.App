CREATE TABLE [dbo].[Districts](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ProvinceId] [int] NOT NULL,
	[CountyId] [int] NOT NULL,
	[AmarCode] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Districts]  WITH NOCHECK ADD  CONSTRAINT [FK_Districts_Counties] FOREIGN KEY([CountyId])
REFERENCES [dbo].[Counties] ([Id])
GO

ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Counties]
GO
ALTER TABLE [dbo].[Districts]  WITH NOCHECK ADD  CONSTRAINT [FK__Districts__Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([Id])
GO

ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK__Districts__Province]