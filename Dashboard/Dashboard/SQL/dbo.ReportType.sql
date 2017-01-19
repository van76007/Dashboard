CREATE TABLE [dbo].[ReportType] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Type] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ReportType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IXQ_ReportType_Type] UNIQUE NONCLUSTERED ([Type] ASC)
);

