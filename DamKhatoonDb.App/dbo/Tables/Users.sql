CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[LastLogin] [int] NOT NULL,
	[DataCreated] [int] NOT NULL,
	[Rank] [nvarchar](50) NOT NULL,
	[PasswordResetToken] [nvarchar](max) NULL,
	[ResetTokenExpiry] [datetime2](7) NULL,
	[RowVersion] [timestamp] NOT NULL,
	[PasswordHash] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]