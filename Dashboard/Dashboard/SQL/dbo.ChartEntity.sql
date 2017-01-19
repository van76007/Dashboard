CREATE TABLE [dbo].[ChartEntity] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [ReportId]      INT            NOT NULL,
    [ChartType]     INT            NOT NULL,
    [ChartName]     NVARCHAR (50)  NOT NULL,
    [TicksAsString] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_ChartEntity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ChartEntity_Report] FOREIGN KEY ([ReportId]) REFERENCES [dbo].[Report] ([Id])
);

