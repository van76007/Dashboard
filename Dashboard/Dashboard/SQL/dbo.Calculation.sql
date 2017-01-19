CREATE TABLE [dbo].[Calculation] (
    [Id]                        INT           IDENTITY (1, 1) NOT NULL,
    [FK_Calculation_ReportType] INT           NOT NULL,
    [Name]                      NVARCHAR (50) NOT NULL,
    [Description]               NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Calculation] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FK_Calculation_ReportType]) REFERENCES [dbo].[ReportType] ([Id])
);

