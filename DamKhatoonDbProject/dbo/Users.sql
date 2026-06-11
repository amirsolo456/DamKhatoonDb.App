CREATE TABLE [dbo].[Users] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [Username]           NVARCHAR (50)  NOT NULL,
    [Password]           NVARCHAR (255) NOT NULL,
    [Name]               NVARCHAR (100) NOT NULL,
    [Age]                INT            NOT NULL,
    [Email]              NVARCHAR (100) NOT NULL,
    [LastLogin]          INT            NOT NULL,
    [DataCreated]        INT            NOT NULL,
    [Rank]               NVARCHAR (50)  NOT NULL,
    [PasswordResetToken] NVARCHAR (MAX) NULL,
    [ResetTokenExpiry]   DATETIME2 (7)  NULL,
    [RowVersion]         ROWVERSION     NOT NULL,
    [PasswordHash]       NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

