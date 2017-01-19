CREATE TABLE [CodeValue] (
[CodeNamespaceId] INT NOT NULL,
[Value] INT NOT NULL,
[Description] NVARCHAR(100) NOT NULL,
[OrderBy] INT,
CONSTRAINT [PK_CodeValue] PRIMARY KEY CLUSTERED ([CodeNamespaceId], [Value]),
CONSTRAINT [FK_CodeValue_CodeNamespace] FOREIGN KEY ([CodeNamespaceId]) REFERENCES [CodeNamespace] ([Id])
)
