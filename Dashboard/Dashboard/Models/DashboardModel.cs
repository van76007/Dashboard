using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dashboard.Models
{
    public class DashboardModel
    {
        public string SelectedReportTypeId { get; set;  }
        public IEnumerable<ReportType> ReportTypes { get; set; }
        public string SelectedReportId { get; set; }
        public IEnumerable<Report> Reports { get; set; }
    }
}