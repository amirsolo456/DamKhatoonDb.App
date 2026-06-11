USE [DamKhatoonDb]
GO

/****** Object:  Table [dbo].[Persons]    Script Date: 6/10/2026 8:14:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonType] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[CompanyName] [nvarchar](200) NULL,
	[NationalId] [nvarchar](20) NULL,
	[EconomicCode] [nvarchar](20) NULL,
	[RegistrationNumber] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](100) NULL,
	[Province] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Persons] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Persons] ADD  DEFAULT (getutcdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Persons] ADD  DEFAULT (getutcdate()) FOR [UpdatedAt]
GO

ALTER TABLE [dbo].[Persons]  WITH CHECK ADD CHECK  (([PersonType]='Legal' OR [PersonType]='Natural'))
GO


