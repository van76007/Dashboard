using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Dashboard.Models
{
    public class BuildChartModel
    {
        public ReportType template { get; set;  }
        public Report report { get; set; }

        public IEnumerable<SelectListItem> ListOfReportTemplates { get; set; }
        public string SelectedReportTemplate { get; set; }

        public IEnumerable<Calculation> Calculations { get; set; }
        public string SelectedCalculationId { get; set; }

        public IList<SQLParam> SQLParameters { get; set; }

        public IEnumerable<Report> Reports { get; set; }
        public string SelectedReportId { get; set; }
    }
}