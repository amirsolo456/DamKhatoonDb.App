 
 
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Unit] [nvarchar](20) NULL,
	[DefaultPrice] [decimal](18, 2) NULL,
	[Version] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Product_Code] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[TypeName] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Version]  DEFAULT ((1)) FOR [Version]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Product_Code]  DEFAULT ((1)) FOR [Product_Code]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_TypeId]  DEFAULT ((0)) FOR [TypeId]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UpdatedAt]  DEFAULT (getdate()) FOR [UpdatedAt]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Products_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Products_Type] ([Id])
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Products_Type]
GO


GO


