using Microsoft.Practices.Unity;
using NPOI.HSSF.UserModel;
using NPOI.POIFS.FileSystem;
using NPOI.SS.UserModel;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace Dashboard.Models
{
    public class ChartRepository : IChartRepository
    {
        
        [Dependency]
        public DatabaseDBEntities context { get; set; }

        void IChartRepository.Dispose()
        {
            context.Dispose();
        }

        IEnumerable<Report> IChartRepository.getAllReportsGivenType(int? ReportTypeId)
        {
            return context.Reports.Where(r => r.FK_Report_ReportType == ReportTypeId).OrderByDescending(r => r.Id).ToList<Report>();
        }

        IEnumerable<ReportType> IChartRepository.getAllReportTypes()
        {
            return context.ReportTypes.ToList();
        }

        IList<SQLParam> IChartRepository.RetrieveParametersOfCalculation(string ProcedureName)
        {
            string sqlStatement = "SELECT name as ParamName, TYPE_NAME(user_type_id) as ParamType FROM sys.parameters WHERE object_id = OBJECT_ID('" + ProcedureName + "')";
            IEnumerable<SQLParam> pairs = context.Database.SqlQuery<SQLParam>(sqlStatement).ToList();
            return pairs.Select(e => new SQLParam(e.ParamName.Substring(1, e.ParamName.Length - 1), "", e.ParamType)).Where(param => param.ParamName.CompareTo("report") != 0).ToList();
        }

        IEnumerable<SelectListItem> IChartRepository.getAllReportTypesAsList()
        {
            return context.ReportTypes.Select(t => new SelectListItem
            {
                Value = t.Id.ToString(),
                Text = t.Type,
                Selected = t.Id.Equals(1)
            }).AsEnumerable();
        }

        IEnumerable<Calculation> IChartRepository.getAllCalculations()
        {
            return context.Calculations.ToList();
        }

        IEnumerable<Report> IChartRepository.getAllReportsGivenCalculation(int? CalculationId)
        {
            Calculation calculation = context.Calculations.Where(p => p.Id == CalculationId).SingleOrDefault();
            return context.Reports.Where(r => r.FK_Report_ReportType == calculation.FK_Calculation_ReportType).OrderByDescending(r => r.Id).ToList<Report>();
        }

        Calculation IChartRepository.getCalculation(int? CalculationId)
        {
            return context.Calculations.Where(p => p.Id == CalculationId).SingleOrDefault();
        }

        IEnumerable<Chart> IChartRepository.retrieveCharts(int? reportId)
        {
            List<Chart> result = new List<Chart>();

            if (reportId != null)
            {
                var charts = context.ChartEntities.Where(c => c.ReportId == reportId).ToList<ChartEntity>();
                foreach (var chartEntity in charts)
                {
                    // Convert ChartEntity to Chart: Chart is JSON object. ChartEntity is for storage because of Collection
                    Chart chart = new Chart();
                    chart.chartName = chartEntity.ChartName;
                    if (typeof(ChartType).IsEnumDefined(chartEntity.ChartType))
                    {
                        chart.chartType = (ChartType)chartEntity.ChartType;
                    }
                    chart.ticks = chartEntity.TicksAsString.Split(',').ToList<string>();
                    assignSeries(chartEntity, chart);
                    result.Add(chart);
                }
            }
            
            return result;
        }

        void IChartRepository.saveOrUpdateReport(Report report)
        {
            populateTable(report);
            context.Reports.Add(report);
            context.SaveChanges();

            // If we want to update chart data. Question: Where to save the SQL paramaters
            /*
            report.RevenueTrackerDatas = new List<RevenueTrackerData>();
            populateTable(report);
            context.Reports.Add(report);
            context.SaveChanges();

            report.ChartEntities = new List<ChartEntity>();
            populateTableRevenueTrackerDashBoardData(report);
            */
        }

        bool IChartRepository.saveChart(ChartEntity chart, List<SerieEntity> series)
        {
            foreach (var serie in series)
            {
                chart.SerieEntities.Add(serie);
            }
            context.ChartEntities.Add(chart);
            context.SaveChanges();
            return true;
        }

        private void populateTable(Report report)
        {
            // @ToDo: Review this hardcoded mapping FK_Report_ReportType (=1) -> RevenueTrackerData entity
            switch (report.FK_Report_ReportType)
            {
                case 1:
                    populateTableRevenueTrackerData(report);
                    break;
                default:
                    break;
            }
        }

        private void populateTableRevenueTrackerData(Report report)
        {
            var fileExtension = Path.GetExtension(report.ReportUrl);
            if (fileExtension.Equals(".xls", StringComparison.OrdinalIgnoreCase))
            {
                populateByExcel(report);
            }
            else if (fileExtension.Equals(".xlsx", StringComparison.OrdinalIgnoreCase))
            {
                populateByExcelX(report);
            }
        }

        private void populateTableRevenueTrackerDashBoardData(Report report)
        {
            // POC
            var year = 2015;

            ChartEntity chart1 = new ChartEntity();
            chart1.ChartName = "DWFM " + year + " REVENUE";
            chart1.ChartType = (int)ChartType.MixChart;
            chart1.SerieEntities = new List<SerieEntity> { };

            ChartEntity chart2 = new ChartEntity();
            chart2.ChartName = "DWFM " + year + " ACCOUNTS RECEIVED";
            chart2.ChartType = (int)ChartType.MixChart;
            chart2.SerieEntities = new List<SerieEntity> { };

            ChartEntity chart3 = new ChartEntity();
            chart3.ChartName = year + " ACCOUNTS RECEIVED / REVENUE CATEGORIES";
            chart3.ChartType = (int)ChartType.StackBarChart;
            chart3.SerieEntities = new List<SerieEntity> { };

            ChartEntity chart4 = new ChartEntity();
            chart4.ChartName = year + " REVENUE RECEIVED / REVENUE CATEGORIES";
            chart4.ChartType = (int)ChartType.StackBarChart;
            chart4.SerieEntities = new List<SerieEntity> { };
            
            var result = context.usp_Generate_Metrics_PEPM(year, 1000, 3000, report.Id).ToList();
            int i = -1;
            foreach (var v in result)
            {
                i++;
                // CHART1
                if (i == 0)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart1.TicksAsString = buildTicksAsString(v);
                    chart1.SerieEntities.Add(serie);
                }

                if (i == 1)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.LineSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart1.TicksAsString = buildTicksAsString(v);
                    chart1.SerieEntities.Add(serie);
                }

                if (i == 2)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.LineSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart1.TicksAsString = buildTicksAsString(v);
                    chart1.SerieEntities.Add(serie);
                }

                // CHART2
                if (i == 3)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart2.TicksAsString = buildTicksAsString(v);
                    chart2.SerieEntities.Add(serie);
                }

                if (i == 4)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.LineSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart2.TicksAsString = buildTicksAsString(v);
                    chart2.SerieEntities.Add(serie);
                }

                if (i == 5)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.LineSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart2.TicksAsString = buildTicksAsString(v);
                    chart2.SerieEntities.Add(serie);
                }

                // CHART3
                if (i == 6)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart3.SerieEntities.Add(serie);
                }

                if (i == 7)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart3.TicksAsString = buildTicksAsString(v);
                    chart3.SerieEntities.Add(serie);
                }

                if (i == 8)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart3.TicksAsString = buildTicksAsString(v);
                    chart3.SerieEntities.Add(serie);
                }

                //CHART 4
                if (i == 9)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart4.TicksAsString = buildTicksAsString(v);
                    chart4.SerieEntities.Add(serie);
                }

                if (i == 10)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart4.TicksAsString = buildTicksAsString(v);
                    chart4.SerieEntities.Add(serie);
                }

                if (i == 11)
                {
                    SerieEntity serie = new SerieEntity();
                    serie.SerieType = (int)SerieType.BarSerie;
                    serie.SerieName = v.Category;
                    serie.PointsAsString = buildPointsAsString(v);
                    chart4.TicksAsString = buildTicksAsString(v);
                    chart4.SerieEntities.Add(serie);
                }
            }

            // Order of adding is important
            context.ChartEntities.Add(chart1);
            context.ChartEntities.Add(chart2);
            context.ChartEntities.Add(chart3);
            context.ChartEntities.Add(chart4);

            report.ChartEntities.Add(chart1);
            report.ChartEntities.Add(chart2);
            report.ChartEntities.Add(chart3);
            report.ChartEntities.Add(chart4);

            context.SaveChanges();
        }

        private void populateByExcelX(Report report)
        {
            throw new NotImplementedException();
        }

        private void populateByExcel(Report report)
        {
            using (FileStream reportFileStream = new FileStream(report.ReportUrl, FileMode.Open, FileAccess.Read))
            {
                HSSFWorkbook dataWorkbook = new HSSFWorkbook(new POIFSFileSystem(reportFileStream));
                ISheet sheet = dataWorkbook.GetSheetAt(0);
                int rowIndex = 0;
                foreach (IRow row in sheet)
                {
                    if (rowIndex > 0)
                    {
                        RevenueTrackerData data = new RevenueTrackerData();

                        // @ToDo: Fix ugly code doing type conversion
                        data.Name = (string)getCellContent(row.GetCell(0));
                        var obj = getCellContent(row.GetCell(1));
                        if (obj == null)
                        {
                            data.Total_Finance_PEPM_Calculated = null;
                        }
                        else
                        {
                            data.Total_Finance_PEPM_Calculated = (decimal)((double)obj);
                        }

                        obj = getCellContent(row.GetCell(2));
                        if (obj == null)
                        {
                            data.Total_Finance_One_Time_Calculated = null;
                        }
                        else
                        {
                            data.Total_Finance_One_Time_Calculated = (decimal)((double)obj);
                        }

                        obj = getCellContent(row.GetCell(3));
                        if (obj == null)
                        {
                            data.Month = null;
                        }
                        else
                        {
                            data.Month = (int)((double)obj);
                        }

                        obj = getCellContent(row.GetCell(4));
                        if (obj == null)
                        {
                            data.Year = null;
                        }
                        else
                        {
                            data.Year = (int)((double)obj);
                        }

                        obj = getCellContent(row.GetCell(5));
                        if (obj == null)
                        {
                            data.Contract_Date = null;
                        }
                        else
                        {
                            try
                            {
                                data.Contract_Date = (DateTime)obj;
                            }
                            catch (InvalidCastException)
                            {
                                data.Contract_Date = null;
                            }
                        }

                        data.Projected_Assignment = (string)getCellContent(row.GetCell(6));

                        obj = getCellContent(row.GetCell(7));
                        if (obj == null)
                        {
                            data.Projected_Project_Start_Date = null;
                        }
                        else
                        {
                            try
                            {
                                data.Projected_Project_Start_Date = (DateTime)obj;
                            }
                            catch (InvalidCastException)
                            {
                                data.Projected_Project_Start_Date = null;
                            }
                        }

                        // BUG: data.Imp_Planned_KO should be DateTime
                        data.Imp_Planned_KO = "";  //(string)getCellContent(row.GetCell(8)); 
                        data.Status_Comments = (string)getCellContent(row.GetCell(9));
                        data.Hold_Explanation = (string)getCellContent(row.GetCell(10));
                        data.Status = (string)getCellContent(row.GetCell(11));
                        data.PSID = (string)getCellContent(row.GetCell(12));

                        report.RevenueTrackerDatas.Add(data);
                    }
                    else
                    {
                        rowIndex++;
                    }
                }
            }
        }

        private static object getCellContent(ICell cell)
        {
            object content = null;
            if (cell == null)
            {
                return content;
            }

            switch (cell.CellType)
            {
                case CellType.Blank:
                    content = cell.StringCellValue;
                    break;
                case CellType.Boolean:
                    content = cell.BooleanCellValue;
                    break;
                case CellType.Error:
                    content = cell.ErrorCellValue;
                    break;
                case CellType.Formula:
                    //content = cell.CellFormula;
                    content = cell.NumericCellValue;
                    break;
                case CellType.Numeric:
                    content = cell.NumericCellValue;
                    if (HSSFDateUtil.IsCellDateFormatted(cell))
                    {
                        content = cell.DateCellValue;
                    }
                    break;
                case CellType.String:
                    content = cell.StringCellValue;
                    break;
                case CellType.Unknown:
                    content = cell.StringCellValue;
                    break;
                default:
                    break;

            }

            return content;
        }

        private string buildPointsAsString(usp_Generate_Metrics_PEPM_Result v)
        {
            var props = v.GetType().GetProperties();
            string[] points = new string[props.Length-1];
            int i = 0;
            int idx = 0;
            foreach (PropertyInfo prop in props)
            {
                if (idx>0)
                {
                    points[i++] = prop.GetValue(v, null).ToString();
                }
                else
                {
                    idx++;
                }
            }
            return string.Join(",", points);
        }

        private List<double> buildPointsAsListOfDouble(usp_Generate_Metrics_PEPM_Result v)
        {
            List<double> points = new List<double>();
            var props = v.GetType().GetProperties();

            int idx = 0;
            foreach (PropertyInfo prop in props)
            {
                if (idx > 0)
                {
                    try
                    {
                        double valAsDouble = double.Parse(prop.GetValue(v, null).ToString(), System.Globalization.CultureInfo.InvariantCulture);
                        points.Add(valAsDouble);
                    } catch (Exception e)
                    { }
                }
                else
                {
                    idx++;
                }
            }
            return points;
        }

        private string buildTicksAsString(usp_Generate_Metrics_PEPM_Result v)
        {
            var props = v.GetType().GetProperties();
            string[] ticks = new string[props.Length-1];
            int i = 0;
            int idx = 0;
            foreach (PropertyInfo prop in props)
            {
                if (idx > 0)
                {
                    ticks[i++] = prop.Name;
                }
                else
                {
                    idx++;
                }
            }
            return string.Join(",", ticks);
        }

        private List<string> buildTicksAsList(usp_Generate_Metrics_PEPM_Result v)
        {
            List<string> rs = new List<string>();
            var props = v.GetType().GetProperties();
           
            int idx = 0;
            foreach (PropertyInfo prop in props)
            {
                if (idx > 0)
                {
                    rs.Add(prop.Name);
                }
                else
                {
                    idx++;
                }
            }
            return rs;
        }

        IList<Serie> IChartRepository.retrieveSeries(CalculationParams calculationParams)
        {
            if (calculationParams.ReportId == null)
            {
                return new List<Serie>();
            }

            if (calculationParams.CalculationId == "1")
            {
                int year, lower, upper, reportId;
                year = lower = upper = reportId = 0;

                reportId = int.Parse(calculationParams.ReportId, System.Globalization.CultureInfo.InvariantCulture);

                foreach (SQLParam par in calculationParams.Parameters) {
                    if (par.ParamName == "year")
                    {
                        year = int.Parse(par.ParamValue, System.Globalization.CultureInfo.InvariantCulture);
                    }
                    if (par.ParamName == "lower")
                    {
                        lower = int.Parse(par.ParamValue, System.Globalization.CultureInfo.InvariantCulture);
                    }
                    if (par.ParamName == "upper")
                    {
                        upper = int.Parse(par.ParamValue, System.Globalization.CultureInfo.InvariantCulture);
                    }
                }

                var result = context.usp_Generate_Metrics_PEPM(year, lower, upper, reportId).ToList();
                return buildSeries(result);
            }
            else
            {
                return new List<Serie>();
            }   
        }

        private IList<Serie> buildSeries(IEnumerable<dynamic> l)
        {
            IList<Serie> series = new List<Serie>();

            foreach (dynamic v in l)
            {
                Serie serie = new Serie();
                serie.serieType = SerieType.UnknownSerie;
                serie.serieName = v.Category;
                serie.points = buildPointsAsListOfDouble(v);
                serie.ticks = buildTicksAsList(v);
                // Do not draw all zero serie
                foreach (var p in serie.points) {
                    if (p != 0) {
                        series.Add(serie);
                        break;
                    }
                }
            }

            return series;
        }

        private void assignSeries(ChartEntity chartEntity, Chart chart)
        {
            chart.series = new List<Serie>();
            foreach (var serieEntity in chartEntity.SerieEntities)
            {
                Serie serie = new Serie();
                serie.serieName = serieEntity.SerieName;
                if (typeof(SerieType).IsEnumDefined(serieEntity.SerieType))
                {
                    serie.serieType = (SerieType)serieEntity.SerieType;
                }
                List<string> points = serieEntity.PointsAsString.Split(',').ToList<string>();
                serie.points = new List<double>();
                foreach (var p in points)
                {
                    try
                    {
                        double val = double.Parse(p, System.Globalization.CultureInfo.InvariantCulture);
                        serie.points.Add(val);
                    }
                    catch (Exception e)
                    { }
                }
                chart.series.Add(serie);
            }
        }
    }
}