using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dashboard.Models
{
    public enum ChartType { UnknownChart = 0, BarChart = 1, PieChart = 2, StackBarChart = 3, MultiBarChart = 4, MixChart = 5 };

    public class Chart
    {
        public ChartType chartType { get; set; }
        public string chartName { get; set; }

        public string reportId { get; set; }

        public List<string> ticks { get; set;  }
        public virtual ICollection<Serie> series { get; set; }
    }
}