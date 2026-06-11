USE [DamKhatoonDb]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 6/10/2026 8:13:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Role] [nvarchar](100) NULL,
	[SalaryAmount] [decimal](18, 2) NULL,
	[IsCommissioned] [bit] NOT NULL,
	[CommissionPercent] [decimal](5, 2) NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Version] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
 

 
 ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [DF_Employees_CreatedAt] DEFAULT (getdate()) FOR [CreatedAt];
 

