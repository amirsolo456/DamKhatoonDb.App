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


GO
CREATE NONCLUSTERED INDEX [IX_Employees_Name]
    ON [dbo].[Employees]([Name] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Employees_Role]
    ON [dbo].[Employees]([Role] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Employees_IsDeleted]
    ON [dbo].[Employees]([IsDeleted] ASC);


GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [IsCommissioned]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((1)) FOR [Version]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [IsDeleted]