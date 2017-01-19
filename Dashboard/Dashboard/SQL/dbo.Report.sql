CREATE TABLE [dbo].[Report] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [FK_Report_ReportType] INT            NOT NULL,
    [Name]                 NVARCHAR (MAX) NOT NULL,
    [ReportUrl]            NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FK_Report_ReportType]) REFERENCES [dbo].[ReportType] ([Id])
);

