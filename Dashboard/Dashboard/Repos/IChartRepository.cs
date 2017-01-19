using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Dashboard.Models
{
    public interface IChartRepository
    {
        IEnumerable<ReportType> getAllReportTypes();
        IEnumerable<SelectListItem> getAllReportTypesAsList();
        IEnumerable<Chart> retrieveCharts(int? reportId);

        IEnumerable<Report> getAllReportsGivenType(int? ReportTypeId);

        void saveOrUpdateReport(Report report);

        IEnumerable<Calculation> getAllCalculations();

        IList<SQLParam> RetrieveParametersOfCalculation(string ProcedureName);

        IEnumerable<Report> getAllReportsGivenCalculation(int? CalculationId);

        Calculation getCalculation(int? CalculationId);

        void Dispose();
        IList<Serie> retrieveSeries(CalculationParams calculationParams);

        Boolean saveChart(ChartEntity chart, List<SerieEntity> series);
    }
}