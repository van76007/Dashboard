CREATE TABLE [dbo].[SerieEntity] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [ChartEntityId]  INT            NOT NULL,
    [CategoryId]     INT            NOT NULL,
    [SerieType]      INT            NOT NULL,
    [SerieName]      NVARCHAR (50)  NOT NULL,
    [PointsAsString] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SerieEntity_ChartEntity] FOREIGN KEY ([ChartEntityId]) REFERENCES [dbo].[ChartEntity] ([Id])
);

