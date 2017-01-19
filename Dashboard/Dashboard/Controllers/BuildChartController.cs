using Dashboard.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;

namespace Dashboard.Controllers
{
    public class BuildChartController : Controller
    {
        private readonly IChartRepository repository;

        public BuildChartController(IChartRepository repository)
        {
            this.repository = repository;
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                repository.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult BuildChart(string message)
        {

            if (!string.IsNullOrEmpty(message))
            {
                ViewBag.Message = message;
            }

            BuildChartModel model = new BuildChartModel();

            model.ListOfReportTemplates = repository.getAllReportTypesAsList();
            model.Calculations = repository.getAllCalculations();
            model.SQLParameters = new List<SQLParam>();
            if (model.Calculations != null && model.Calculations.Any())
            {
                model.SelectedCalculationId = model.Calculations.ElementAt(0).Id.ToString();
                model.SQLParameters = repository.RetrieveParametersOfCalculation(model.Calculations.ElementAt(0).Name);
            }
            else
            {
                model.SelectedCalculationId = "-1";
            }

            model.Reports = repository.getAllReportsGivenCalculation(model.Calculations.ElementAt(0).Id);
            if (model.Reports != null && model.Reports.Any())
            {
                model.SelectedReportId = model.Reports.ElementAt(0).Id.ToString();
            }
            else
            {
                model.SelectedReportId = "-1";
            }

            return View(model);
        }

        public ActionResult Repos(int? calculationId)
        {
            if (calculationId != null)
            {
                var rs = repository.getAllReportsGivenCalculation(calculationId);
                var reports = rs.Select(x => new
                {
                    Id = x.Id,
                    Name = "Report " + x.Name
                });
                return Json(reports, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json("{ Id = -1, Name = \"--Select One Report--\" }", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public ActionResult GetSQLParameters(int? calculationId)
        {
            IList<SQLParam> SQLParameters = new List<SQLParam>();

            Calculation calc = repository.getCalculation(calculationId);
            if (calc != null)
            {
                SQLParameters = repository.RetrieveParametersOfCalculation(calc.Name);
            }

            return PartialView("_Parameters", SQLParameters);
        }

        [HttpPost]
        public JsonResult RetrieveSeries(CalculationParams calculationParams)
        {
            var v = calculationParams.CalculationId;
            return Json(this.repository.retrieveSeries(calculationParams));
        }

        [HttpPost]
        public JsonResult SaveCharts(Chart chart)
        {
            ChartEntity chartEntity = new ChartEntity();
            chartEntity.ReportId = Int32.Parse(chart.reportId);
            chartEntity.ChartName = chart.chartName;
            chartEntity.ChartType = (int)chart.chartType;
            chartEntity.TicksAsString = string.Join(",", chart.ticks);

            List<SerieEntity> serieEnties = new List<SerieEntity>();
            foreach (Serie serie in chart.series)
            {
                SerieEntity serieEntity = new SerieEntity();
                serieEntity.SerieName = serie.serieName;
                serieEntity.SerieType = (int)serie.serieType;
                serieEntity.PointsAsString = string.Join(",", serie.points);
                serieEntity.CategoryId = 0; // TODO: Remove CategoryId from DB
                serieEnties.Add(serieEntity);
            }

            repository.saveChart(chartEntity, serieEnties);

            return Json("Charts are saved");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UploadReport([Bind(Include = "SelectedReportTemplate")]BuildChartModel model, HttpPostedFileBase uploadReport)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (uploadReport != null && uploadReport.ContentLength > 0)
                    {
                        var s = model.SelectedReportTemplate;
                        var r = uploadReport.FileName;

                        var uploadDir = WebConfigurationManager.AppSettings["reportFolder"];
                        var reportPath = Path.Combine(Server.MapPath(uploadDir), uploadReport.FileName);
                        var reportUrl = Path.Combine(uploadDir, uploadReport.FileName);
                        uploadReport.SaveAs(reportPath);

                        Report report = new Report();

                        report.Name = Path.GetFileNameWithoutExtension(uploadReport.FileName);
                        report.FK_Report_ReportType = Int32.Parse(model.SelectedReportTemplate);
                        report.ReportUrl = reportPath;
                        this.repository.saveOrUpdateReport(report);

                        ModelState.Clear();
                        return RedirectToAction("BuildChart", new { message = "File upload successfully" });
                    }
                }
            }
            catch (RetryLimitExceededException dex)
            {
                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
            }

            // TODO: Add message to display?
            return RedirectToAction("BuildChart");
        }
    }
}