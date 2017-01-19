CREATE PROCEDURE [dbo].[usp_Generate_Metrics_PEPM](@year INT, @lower INT, @upper INT, @report INT)
AS
     BEGIN
         DECLARE @table TABLE
         (/*id                                     INT IDENTITY(1, 1),*/
          MonthName									VARCHAR(12),
          MonthNum									INT,
          TotalRevenuePerMonth						MONEY,
          TotalRevenueLessThan_lower_PerMonth		MONEY,
          TotalRevenueBetween_lower_And_upper_		MONEY,
          TotalRevenueGreaterThan_upper_            MONEY,
          PercentageReevenueLessThan_lower_         FLOAT,
          PercentageRevenueBetween_lower_And_upper_ FLOAT,
          PercentageRevenueGreaterThan_upper_       FLOAT,
          CountLessThan_lower_                      INT,
          CountBetween_lower_And_upper_             INT,
          CountGreaterThan_upper_                   INT,
          TotalAccounts								float,
          PercentageAccountLessThan_lower_          FLOAT,
          PercentageAccountBetween_lower_And_upper_ FLOAT,
          PercentageAccountsGreaterThan_upper_      FLOAT
         );
         INSERT INTO @table
         (MonthName,
          MonthNum,
          TotalRevenuePerMonth
         )
                SELECT DATENAME(Month, [Contract_Date]) AS [MonthName],
                       month,
                       SUM(Total_Finance_PEPM_calculated)
                FROM dbo.RevenueTrackerData
                WHERE year = @year AND FK_RevenueTrackerData_Report = @report
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
               TotalRevenueLessThan_lower_PerMonth = ISNULL(tbl.Total, 0)
         FROM @table tb
              INNER JOIN
         (
             SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                    month,
                    ISNULL(SUM(Total_Finance_PEPM_calculated), 0) AS Total
             FROM dbo.RevenueTrackerData
             WHERE year = @year AND FK_RevenueTrackerData_Report = @report
                   AND Total_Finance_PEPM_calculated < @lower
             GROUP BY DATENAME(month, [Contract_Date]),
                      month
         ) tbl ON tbl.MonthName = tb.MonthName;
         UPDATE @table
           SET
               TotalRevenueBetween_lower_And_upper_ = ISNULL(tbl.Total, 0)
         FROM @table tb
              INNER JOIN
         (
             SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                    month,
                    ISNULL(SUM(Total_Finance_PEPM_calculated), 0) AS Total
             FROM dbo.RevenueTrackerData
             WHERE year = @year AND FK_RevenueTrackerData_Report = @report
                   AND Total_Finance_PEPM_calculated BETWEEN @lower AND @upper
             GROUP BY DATENAME(month, [Contract_Date]),
                      month
         ) tbl ON tbl.MonthName = tb.MonthName;
         UPDATE @table
           SET
               TotalRevenueGreaterThan_upper_ = ISNULL(tbl.Total, 0)
         FROM @table tb
              INNER JOIN
         (
             SELECT DATENAME(month, [Contract_Date]) AS [MonthName],
                    month,
                    ISNULL(SUM(Total_Finance_PEPM_calculated), 0) AS Total
             FROM dbo.RevenueTrackerData
             WHERE year = @year AND FK_RevenueTrackerData_Report = @report
                   AND Total_Finance_PEPM_calculated > @upper
             GROUP BY DATENAME(month, [Contract_Date]),
                      month
         ) tbl ON tbl.MonthName = tb.MonthName;
         UPDATE @table
           SET
               PercentageReevenueLessThan_lower_ = CASE
                                                    WHEN ISNULL(TotalRevenuePerMonth, 0) = 0
                                                    THEN 0
                                                    ELSE(TotalRevenueLessThan_lower_PerMonth / TotalRevenuePerMonth) * 100
                                                END;
         UPDATE @table
           SET
               PercentageRevenueBetween_lower_And_upper_ = CASE
                                                            WHEN ISNULL(TotalRevenuePerMonth, 0) = 0
                                                            THEN 0
                                                            ELSE(TotalRevenueBetween_lower_And_upper_ / TotalRevenuePerMonth) * 100
                                                        END;
         UPDATE @table
           SET
               PercentageRevenueGreaterThan_upper_ = CASE
                                                  WHEN ISNULL(TotalRevenuePerMonth, 0) = 0
                                                  THEN 0
                                                  ELSE(TotalRevenueGreaterThan_upper_ / TotalRevenuePerMonth) * 100
                                              END;
         UPDATE @table
           SET
               CountLessThan_lower_ = agg.cnt
         FROM @table tb
              INNER JOIN
         (
             SELECT COUNT(*) AS cnt,
                    month,
                    year
             FROM RevenueTrackerData
             WHERE year = @year AND FK_RevenueTrackerData_Report = @report
                   AND Total_Finance_PEPM_calculated < @lower
             GROUP BY month,
                      year
         ) agg ON agg.Month = tb.MonthNum;
         
         UPDATE @table
           SET
               CountBetween_lower_And_upper_ = agg.cnt
         FROM @table tb
              INNER JOIN
         (
             SELECT COUNT(*) AS cnt,
                    month,
                    year
             FROM RevenueTrackerData
             WHERE year = @year AND FK_RevenueTrackerData_Report = @report
                   AND Total_Finance_PEPM_calculated BETWEEN @lower AND @upper
             GROUP BY month,
                      year
         ) agg ON agg.Month = tb.MonthNum;
         -- CountGreaterThan_upper_
         UPDATE @table
           SET
               CountGreaterThan_upper_ = agg.cnt
         FROM @table tb
              INNER JOIN
         (
             SELECT COUNT(*) AS cnt,
                    month,
                    year
             FROM RevenueTrackerData
             WHERE year = @year AND FK_RevenueTrackerData_Report = @report
                   AND Total_Finance_PEPM_calculated > @upper
             GROUP BY month,
                      year
         ) agg ON agg.Month = tb.MonthNum;
         
         update @table set TotalAccounts = ISNULL(CountLessThan_lower_,0) + ISNULL(CountBetween_lower_And_upper_,0) + ISNULL(CountGreaterThan_upper_,0)
             
          --PercentageAccountLessThan_lower_              FLOAT,
          --PercentageAccountBetween_lower_And_upper_        FLOAT,
          --PercentageAccountsGreaterThan_upper_          FLOAT      
         -- SELECT *
         --FROM @table;        
         update @table 
         set  
         PercentageAccountLessThan_lower_ = ROUND((ISNULL(CountLessThan_lower_,0) / TotalAccounts)* 100,2),
         PercentageAccountBetween_lower_And_upper_ = ROUND((ISNULL(CountBetween_lower_And_upper_,0) / TotalAccounts)* 100,2),
         PercentageAccountsGreaterThan_upper_  =  ROUND((ISNULL(CountGreaterThan_upper_,0) / TotalAccounts)* 100,2)
         where TotalAccounts > 0
         --select TotalAccounts,
         --CountLessThan_lower_,PercentageAccountLessThan_lower_ = ISNULL(CountLessThan_lower_,0) / TotalAccounts,
         --CountBetween_lower_And_upper_,PercentageAccountBetween_lower_And_upper_ = ISNULL(CountBetween_lower_And_upper_,0) / TotalAccounts,
         --CountGreaterThan_upper_,PercentageAccountsGreaterThan_upper_  =  ISNULL(CountGreaterThan_upper_,0) / TotalAccounts from @table
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
          
         
         DECLARE @L NVARCHAR(10);
		 SET @L = Convert(varchar(10), @lower);

		 DECLARE @U NVARCHAR(10);
		 SET @U = Convert(varchar(10), @upper);
      
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
		 DECLARE @Cat1 NVARCHAR(100);
		 SET @Cat1 = 'Total Revenue Less Than ' + @L + ' Per Month';
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat1 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenueLessThan_lower_PerMonth, 0) AS TotalRevenueLessThan_lower_PerMonth
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenueLessThan_lower_PerMonth) FOR [month] IN(Jan,
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
		 DECLARE @Cat2 NVARCHAR(100);
		 SET @Cat2 = 'Total Revenue between ' + @L + ' And ' + @U;																			
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat2 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenueBetween_lower_And_upper_, 0) AS TotalRevenueBetween_lower_And_upper_
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenueBetween_lower_And_upper_) FOR [month] IN(Jan,
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
		 DECLARE @Cat3 NVARCHAR(100);
		 SET @Cat3 = 'Total Revenue Greater Than ' + @U;
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat3 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(TotalRevenueGreaterThan_upper_, 0) AS TotalRevenueGreaterThan_upper_
                    FROM @table
                ) AS x PIVOT(SUM(TotalRevenueGreaterThan_upper_) FOR [month] IN(Jan,
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
		 DECLARE @Cat4 NVARCHAR(100);
		 SET @Cat4 = '% Of Revenue Less Than ' + @L;																			
         INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat4 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageReevenueLessThan_lower_, 0) AS PercentageReevenueLessThan_lower_
                    FROM @table
                ) AS x PIVOT(SUM(PercentageReevenueLessThan_lower_) FOR [month] IN(Jan,
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
         DECLARE @Cat5 NVARCHAR(100);
		 SET @Cat5 = '% Revenue Between ' + @L + ' And ' + @U;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat5 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageRevenueBetween_lower_And_upper_, 0) AS PercentageRevenueBetween_lower_And_upper_
                    FROM @table
                ) AS x PIVOT(SUM(PercentageRevenueBetween_lower_And_upper_) FOR [month] IN(Jan,
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
         DECLARE @Cat6 NVARCHAR(100);
		 SET @Cat6 = '% Revenue Greater Than ' + @U;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat6 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageRevenueGreaterThan_upper_, 0) AS PercentageRevenueGreaterThan_upper_
                    FROM @table
                ) AS x PIVOT(SUM(PercentageRevenueGreaterThan_upper_) FOR [month] IN(Jan,
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
         DECLARE @Cat7 NVARCHAR(100);
		 SET @Cat7 = 'Number Of Account Less Than ' + @L;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat7 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(CountLessThan_lower_, 0) AS CountLessThan_lower_
                    FROM @table
                ) AS x PIVOT(SUM(CountLessThan_lower_) FOR [month] IN(Jan,
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
         DECLARE @Cat8 NVARCHAR(100);
		 SET @Cat8 = 'No. of Accounts Between ' + @L + ' And ' + @U;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat8 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(CountBetween_lower_And_upper_, 0) AS CountBetween_lower_And_upper_
                    FROM @table
                ) AS x PIVOT(SUM(CountBetween_lower_And_upper_) FOR [month] IN(Jan,
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
         DECLARE @Cat9 NVARCHAR(100);
		 SET @Cat9 = 'No. of Accounts Greater Than ' + @U;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat9 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(CountGreaterThan_upper_, 0) AS CountGreaterThan_upper_
                    FROM @table
                ) AS x PIVOT(SUM(CountGreaterThan_upper_) FOR [month] IN(Jan,
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
         DECLARE @Cat10 NVARCHAR(100);
		 SET @Cat10 = '% Accounts Less Than ' + @L;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat10 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageAccountLessThan_lower_, 0) AS PercentageAccountLessThan_lower_
                    FROM @table
                ) AS x PIVOT(SUM(PercentageAccountLessThan_lower_) FOR [month] IN(Jan,
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
         DECLARE @Cat11 NVARCHAR(100);
		 SET @Cat11 = '% Accounts Between ' + @L + ' And ' + @U;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat11 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageAccountBetween_lower_And_upper_, 0) AS PercentageAccountBetween_lower_And_upper_
                    FROM @table
                ) AS x PIVOT(SUM(PercentageAccountBetween_lower_And_upper_) FOR [month] IN(Jan,
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
         DECLARE @Cat12 NVARCHAR(100);
		 SET @Cat12 = '% Accounts Greater Than ' + @U;
		 INSERT INTO @pivot
                SELECT *
                FROM
                (
                    SELECT @Cat12 AS Category,
                           LEFT(MonthName, 3) AS month,
                           ISNULL(PercentageAccountsGreaterThan_upper_, 0) AS PercentageAccountsGreaterThan_upper_
                    FROM @table
                ) AS x PIVOT(SUM(PercentageAccountsGreaterThan_upper_) FOR [month] IN(Jan,
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