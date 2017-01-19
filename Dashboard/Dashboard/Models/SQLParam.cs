using System;
using System.ComponentModel.DataAnnotations;

namespace Dashboard.Models
{
    public class SQLParam
    {
        public String ParamName { get; set; }

        [Required(ErrorMessage = "Value must be specified")]
        public String ParamValue { get; set; }

        public String ParamType { get; set; }

        public SQLParam() { }
        public SQLParam(String paramName, String paramValue, String paramType)
        {
            this.ParamName = paramName;
            this.ParamValue = paramValue;
            this.ParamType = paramType;
        }
    }
}