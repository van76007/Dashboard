CREATE TABLE [dbo].[RevenueTrackerData] (
    [Name]                              VARCHAR (MAX) NULL,
    [Total_Finance_PEPM_Calculated]     MONEY         NULL,
    [Total_Finance_One_Time_Calculated] MONEY         NULL,
    [Month]                             INT           NULL,
    [Year]                              INT           NULL,
    [Contract_Date]                     DATETIME      NULL,
    [Projected_Assignment]              VARCHAR (255) NULL,
    [Projected_Project_Start_Date]      DATETIME      NULL,
    [Imp_Planned_KO]                    VARCHAR (MAX) NULL,
    [Status_Comments]                   VARCHAR (MAX) NULL,
    [Hold_Explanation]                  VARCHAR (MAX) NULL,
    [Status]                            VARCHAR (MAX) NULL,
    [PSID]                              VARCHAR (MAX) NULL,
    [Id]                                INT           IDENTITY (1, 1) NOT NULL,
    [FK_RevenueTrackerData_Report]      INT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_RevenueTrackerData] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FK_RevenueTrackerData_Report]) REFERENCES [dbo].[Report] ([Id])
);

