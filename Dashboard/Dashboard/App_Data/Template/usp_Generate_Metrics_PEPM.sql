
/****** Object:  StoredProcedure [dbo].[usp_Generate_Metrics_PEPM]    Script Date: 06/06/2016 10:52:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Generate_Metrics_PEPM](@year INT)
AS
     BEGIN
         DECLARE @table TABLE
         (/*id                                     INT IDENTITY(1, 1),*/
          MonthName                              VARCHAR(12),
          MonthNum                               INT,
          TotalRevenuePerMonth                   MONEY,
          TotalRevenueLessThan100PerMonth        MONEY,
          TotalRevenueBetween1000n3000           MONEY,
          TotalRevenueGreater3000                MONEY,
          PercentageReevenueLessThan1000         FLOAT,
          PercentageReevenueBetweenThan1000n3000 FLOAT,
          PercentageRevenueGreater3000           FLOAT,
          CountLessThan1000                      INT,
          CountBet1000and3000                    INT,
          CountGreaterThan3000                   INT,
          TotalAccounts                          float,
          PercentageAccountLess1000              FLOAT,
          PercentageAccountBet1000and3000        FLOAT,
          PercentageAccountsGreater3000          FLOAT
         );
         INSERT INTO @table
         (MonthName,
          MonthNum,
          TotalRevenuePerMonth
         )
                SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                       month,
                       SUM(Total_Finance_PEPM_calculated)
                FROM dbo.tbl_Revenue_Tracker_Data
                WHERE year = @year
                GROUP BY DATENAME(month, [Contract_Date]),
                         month
                UNION ALL
                SELECT 'October',
                       10,
                       0
                UNION ALL
                SELECT 'November',
                       11,
                       0
                UNION ALL
                SELECT 'December',
                       12,
                       0;
         UPDATE @table
           SET
               TotalRevenueLessThan100PerMonth = ISNULL(tbl.Total, 0)
         FROM @table tb
              INNER JOIN
         (
             SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                    month,
                    ISNULL(SUM(Total_Finance_PEPM_calculated), 0) AS Total
             FROM dbo.tbl_Revenue_Tracker_Data
             WHERE year = @year
                   AND Total_Finance_PEPM_calculated < 1000
             GROUP BY DATENAME(month, [Contract_Date]),
                      month
         ) tbl ON tbl.MonthName = tb.MonthName;
         UPDATE @table
           SET
               TotalRevenueBetween1000n3000 = ISNULL(tbl.Total, 0)
         FROM @table tb
              INNER JOIN
         (
             SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                    month,
                    ISNULL(SUM(Total_Finance_PEPM_calculated), 0) AS Total
             FROM dbo.tbl_Revenue_Tracker_Data
             WHERE year = @year
                   AND Total_Finance_PEPM_calculated BETWEEN 1000 AND 3000
             GROUP BY DATENAME(month, [Contract_Date]),
                      month
         ) tbl ON tbl.MonthName = tb.MonthName;
         UPDATE @table
           SET
               TotalRevenueGreater3000 = ISNULL(tbl.Total, 0)
         FROM @table tb
              INNER JOIN
         (
             SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                    month,
                    ISNULL(SUM(Total_Finance_PEPM_calculated), 0) AS Total
             FROM dbo.tbl_Revenue_Tracker_Data
             WHERE year = @year
                   AND Total_Finance_PEPM_calculated > 3000
             GROUP BY DATENAME(month, [Contract_Date]),
                      month
         ) tbl ON tbl.MonthName = tb.MonthName;
         UPDATE @table
           SET
               PercentageReevenueLessThan1000 = CASE
                                                    WHEN ISNULL(TotalRevenuePerMonth, 0) = 0
                                                    THEN 0
                                                    ELSE(TotalRevenueLessThan100PerMonth / TotalRevenuePerMonth) * 100
                                                END;
         UPDATE @table
           SET
               PercentageReevenueBetweenThan1000n3000 = CASE
                                                            WHEN ISNULL(TotalRevenuePerMonth, 0) = 0
                                                            THEN 0
                                                            ELSE(TotalRevenueBetween1000n3000 / TotalRevenuePerMonth) * 100
                                                        END;
         UPDATE @table
           SET
               PercentageRevenueGreater3000 = CASE
                                                  WHEN ISNULL(TotalRevenuePerMonth, 0) = 0
                                                  THEN 0
                                                  ELSE(TotalRevenueGreater3000 / TotalRevenuePerMonth) * 100
                                              END;
         UPDATE @table
           SET
               CountLessThan1000 = agg.cnt
         FROM @table tb
              INNER JOIN
         (
             SELECT COUNT(*) AS cnt,
                    month,
                    year
             FROM tbl_Revenue_Tracker_Data
             WHERE year = @year
                   AND Total_Finance_PEPM_calculated < 1000
             GROUP BY month,
                      year
         ) agg ON agg.Month = tb.MonthNum;
         
         UPDATE @table
           SET
               CountBet1000and3000 = agg.cnt
         FROM @table tb
              INNER JOIN
         (
             SELECT COUNT(*) AS cnt,
                    month,
                    year
             FROM tbl_Revenue_Tracker_Data
             WHERE year = @year
                   AND Total_Finance_PEPM_calculated BETWEEN 1000 AND 3000
             GROUP BY month,
                      year
         ) agg ON agg.Month = tb.MonthNum;
         -- CountGreaterThan3000
         UPDATE @table
           SET
               CountGreaterThan3000 = agg.cnt
         FROM @table tb
              INNER JOIN
         (
             SELECT COUNT(*) AS cnt,
                    month,
                    year
             FROM tbl_Revenue_Tracker_Data
             WHERE year = @year
                   AND Total_Finance_PEPM_calculated > 3000
             GROUP BY month,
                      year
         ) agg ON agg.Month = tb.MonthNum;
         
         update @table set TotalAccounts = ISNULL(CountLessThan1000,0) + ISNULL(CountBet1000and3000,0) + ISNULL(CountGreaterThan3000,0)
             
          --PercentageAccountLess1000              FLOAT,
          --PercentageAccountBet1000and3000        FLOAT,
          --PercentageAccountsGreater3000          FLOAT      
         -- SELECT *
         --FROM @table;        
         update @table 
         set  
         PercentageAccountLess1000 = ROUND((ISNULL(CountLessThan1000,0) / TotalAccounts)* 100,2),
         PercentageAccountBet1000and3000 = ROUND((ISNULL(CountBet1000and3000,0) / TotalAccounts)* 100,2),
         PercentageAccountsGreater3000  =  ROUND((ISNULL(CountGreaterThan3000,0) / TotalAccounts)* 100,2)
         where TotalAccounts > 0
         --select TotalAccounts,
         --CountLessThan1000,PercentageAccountLess1000 = ISNULL(CountLessThan1000,0) / TotalAccounts,
         --CountBet1000and3000,PercentageAccountBet1000and3000 = ISNULL(CountBet1000and3000,0) / TotalAccounts,
         --CountGreaterThan3000,PercentageAccountsGreater3000  =  ISNULL(CountGreaterThan3000,0) / TotalAccounts from @table
         --where TotalAccounts > 0
         DECLARE @pivot TABLE
         (Category VARCHAR(1000),
          Jan      VARCHAR(100),
          Feb      VARCHAR(100),
          Mar      VARCHAR(100),
          Apr      VARCHAR(100),
          May      VARCHAR(100),
          Jun      VARCHAR(100),
          Jul      VARCHAR(100),
          Aug      VARCHAR(100),
          Sep      VARCHAR(100),
          Oct      VARCHAR(100),
          Nov      VARCHAR(100),
          Dec      VARCHAR(100)
         );
         
          
         --select * from @table
          
         
         
      
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'Total Revenue/Month' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenuePerMonth, 0) AS TotalRevenuePerMonth
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenuePerMonth) FOR [month] IN(Jan,
                                                                      Feb,
                                                                      Mar,
                                                                      Apr,
                                                                      May,
                                                                      Jun,
                                                                      Jul,
                                                                      Aug,
                                                                      Sep,
                                                                      Oct,
                                                                      Nov,
                                                                      Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'Total Revenue < 1000 /Month' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenueLessThan100PerMonth, 0) AS TotalRevenueLessThan100PerMonth
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenueLessThan100PerMonth) FOR [month] IN(Jan,
                                                                                 Feb,
                                                                                 Mar,
                                                                                 Apr,
                                                                                 May,
                                                                                 Jun,
                                                                                 Jul,
                                                                                 Aug,
                                                                                 Sep,
                                                                                 Oct,
                                                                                 Nov,
                                                                                 Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'Total Revenue between 1000 & 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenueBetween1000n3000, 0) AS TotalRevenueBetween1000n3000
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenueBetween1000n3000) FOR [month] IN(Jan,
                                                                              Feb,
                                                                              Mar,
                                                                              Apr,
                                                                              May,
                                                                              Jun,
                                                                              Jul,
                                                                              Aug,
                                                                              Sep,
                                                                              Oct,
                                                                              Nov,
                                                                              Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'Total Revenue > 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenueGreater3000, 0) AS TotalRevenueGreater3000
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenueGreater3000) FOR [month] IN(Jan,
                                                                         Feb,
                                                                         Mar,
                                                                         Apr,
                                                                         May,
                                                                         Jun,
                                                                         Jul,
                                                                         Aug,
                                                                         Sep,
                                                                         Oct,
                                                                         Nov,
                                                                         Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT '% Revenue < 1000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageReevenueLessThan1000, 0) AS PercentageReevenueLessThan1000
                    FROM @table
                ) AS x PIVOT(SUM(PercentageReevenueLessThan1000) FOR [month] IN(Jan,
                                                                                Feb,
                                                                                Mar,
                                                                                Apr,
                                                                                May,
                                                                                Jun,
                                                                                Jul,
                                                                                Aug,
                                                                                Sep,
                                                                                Oct,
                                                                                Nov,
                                                                                Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT '% Revenue between 1000 & 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageReevenueBetweenThan1000n3000, 0) AS PercentageReevenueBetweenThan1000n3000
                    FROM @table
                ) AS x PIVOT(SUM(PercentageReevenueBetweenThan1000n3000) FOR [month] IN(Jan,
                                                                                        Feb,
                                                                                        Mar,
                                                                                        Apr,
                                                                                        May,
                                                                                        Jun,
                                                                                        Jul,
                                                                                        Aug,
                                                                                        Sep,
                                                                                        Oct,
                                                                                        Nov,
                                                                                        Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT '% Revenue > 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageRevenueGreater3000, 0) AS PercentageRevenueGreater3000
                    FROM @table
                ) AS x PIVOT(SUM(PercentageRevenueGreater3000) FOR [month] IN(Jan,
                                                                              Feb,
                                                                              Mar,
                                                                              Apr,
                                                                              May,
                                                                              Jun,
                                                                              Jul,
                                                                              Aug,
                                                                              Sep,
                                                                              Oct,
                                                                              Nov,
                                                                              Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'No. of Accounts < 1000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(CountLessThan1000, 0) AS CountLessThan1000
                    FROM @table
                ) AS x PIVOT(SUM(CountLessThan1000) FOR [month] IN(Jan,
                                                                   Feb,
                                                                   Mar,
                                                                   Apr,
                                                                   May,
                                                                   Jun,
                                                                   Jul,
                                                                   Aug,
                                                                   Sep,
                                                                   Oct,
                                                                   Nov,
                                                                   Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'No. of Accounts between 1000 & 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(CountBet1000and3000, 0) AS CountBet1000and3000
                    FROM @table
                ) AS x PIVOT(SUM(CountBet1000and3000) FOR [month] IN(Jan,
                                                                     Feb,
                                                                     Mar,
                                                                     Apr,
                                                                     May,
                                                                     Jun,
                                                                     Jul,
                                                                     Aug,
                                                                     Sep,
                                                                     Oct,
                                                                     Nov,
                                                                     Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'No. of Accounts > 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(CountGreaterThan3000, 0) AS CountGreaterThan3000
                    FROM @table
                ) AS x PIVOT(SUM(CountGreaterThan3000) FOR [month] IN(Jan,
                                                                      Feb,
                                                                      Mar,
                                                                      Apr,
                                                                      May,
                                                                      Jun,
                                                                      Jul,
                                                                      Aug,
                                                                      Sep,
                                                                      Oct,
                                                                      Nov,
                                                                      Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT 'Total No. of Accounts' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalAccounts, 0) AS TotalAccounts
                    FROM @table
                ) AS x PIVOT(SUM(TotalAccounts) FOR [month] IN(Jan,
                                                               Feb,
                                                               Mar,
                                                               Apr,
                                                               May,
                                                               Jun,
                                                               Jul,
                                                               Aug,
                                                               Sep,
                                                               Oct,
                                                               Nov,
                                                               Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT '% Accounts < 1000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageAccountLess1000, 0) AS PercentageAccountLess1000
                    FROM @table
                ) AS x PIVOT(SUM(PercentageAccountLess1000) FOR [month] IN(Jan,
                                                                           Feb,
                                                                           Mar,
                                                                           Apr,
                                                                           May,
                                                                           Jun,
                                                                           Jul,
                                                                           Aug,
                                                                           Sep,
                                                                           Oct,
                                                                           Nov,
                                                                           Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT '% Accounts < 1000 & 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageAccountBet1000and3000, 0) AS PercentageAccountBet1000and3000
                    FROM @table
                ) AS x PIVOT(SUM(PercentageAccountBet1000and3000) FOR [month] IN(Jan,
                                                                                 Feb,
                                                                                 Mar,
                                                                                 Apr,
                                                                                 May,
                                                                                 Jun,
                                                                                 Jul,
                                                                                 Aug,
                                                                                 Sep,
                                                                                 Oct,
                                                                                 Nov,
                                                                                 Dec)) AS pvt;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT '% Accounts > 3000' AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageAccountsGreater3000, 0) AS PercentageAccountsGreater3000
                    FROM @table
                ) AS x PIVOT(SUM(PercentageAccountsGreater3000) FOR [month] IN(Jan,
                                                                               Feb,
                                                                               Mar,
                                                                               Apr,
                                                                               May,
                                                                               Jun,
                                                                               Jul,
                                                                               Aug,
                                                                               Sep,
                                                                               Oct,
                                                                               Nov,
                                                                               Dec)) AS pvt;
         SELECT *
         FROM @pivot;
         --*/
     END;

GO


