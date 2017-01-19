using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dashboard.Models
{
    public enum SerieType { UnknownSerie = 0, BarSerie = 1, LineSerie = 2, PieSerie = 3 };

    public class Serie
    {
        public SerieType serieType { get; set; }
        public string serieName { get; set; }
        public List<double> points { get; set;  }
        public List<string> ticks { get; set; }
    }
}