using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dashboard.Models
{
    public class CalculationParams
    {
        public string CalculationId { get; set; }

        public string ReportId { get; set; }

        public List<SQLParam> Parameters { get; set; }
    }
}