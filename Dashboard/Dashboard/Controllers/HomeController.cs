using System.Linq;
using System.Web.Mvc;
using Dashboard.Models;

namespace Dashboard.Controllers
{
    public class HomeController : Controller
    {
        private readonly IChartRepository repository;

        public HomeController(IChartRepository repository)
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

        public ActionResult About()
        {
            ViewBag.Message = "About the application";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact details";

            return View();
        }

        public ActionResult DashBoard()
        {
            DashboardModel model = new DashboardModel();
            model.ReportTypes = repository.getAllReportTypes();

            if (model.ReportTypes != null && model.ReportTypes.Any())
            {
                model.SelectedReportTypeId = model.ReportTypes.ElementAt(0).Id.ToString();
            }
            else
            {
                model.SelectedReportTypeId = "-1";
            }

            model.Reports = repository.getAllReportsGivenType(model.ReportTypes.ElementAt(0).Id);
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

        public ActionResult Reports(int? reportTypeId)
        {
            if (reportTypeId != null)
            {
                var rs = repository.getAllReportsGivenType(reportTypeId);
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

        [HttpPost]
        public JsonResult RetrieveChartData(int? reportId)
        {
            return Json(this.repository.retrieveCharts(reportId));
        }

        
    }
}