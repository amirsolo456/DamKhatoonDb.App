 
GO

CREATE TABLE [dbo].[Products_Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[Code] [int] NOT NULL,
	[ParentId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products_Type] ADD  CONSTRAINT [DF_Products_Type_Code]  DEFAULT ((1)) FOR [Code]
GO

ALTER TABLE [dbo].[Products_Type] ADD  CONSTRAINT [DF_Products_Type_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO

ALTER TABLE [dbo].[Products_Type] ADD  CONSTRAINT [DF_Products_Type_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Products_Type] ADD  CONSTRAINT [DF_Products_Type_UpdatedAt]  DEFAULT (getdate()) FOR [UpdatedAt]
GO

ALTER TABLE [dbo].[Products_Type]  WITH CHECK ADD  CONSTRAINT [FK_Products_Type_Parent] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Products_Type] ([Id])
GO

ALTER TABLE [dbo].[Products_Type] CHECK CONSTRAINT [FK_Products_Type_Parent]
GO


GO


