using System;
using System.IO;
using NPOI.HSSF.UserModel;
using NPOI.POIFS.FileSystem;
using NPOI.SS.UserModel;
using System.Globalization;
using NPOI.SS.Util;
using NPOI.XSSF.UserModel;
using NPOI.SS.Formula.Functions;
using NPOI.OpenXml4Net.OPC;

namespace TestNPOI
{
    class Program
    {
        static void Main(string[] args)
        {
            // THIS CODE PROCESS .XLS format
            /*
            string templateFile = "C:\\Revenue Tracker.xls";
            string dataFile = "C:\\Book1_RevenueTracker.xls";
            string outputFile = "C:\\Revenue Tracker_Out.xls";

            using (StreamReader inputTemplate = new StreamReader(templateFile))
            {
                HSSFWorkbook templateWorkbook = new HSSFWorkbook(new POIFSFileSystem(inputTemplate.BaseStream));

                // Merge templateWorkbook to dataWorkbook
                // 1. Empty sheet 1 of template
                ISheet sheet = templateWorkbook.GetSheetAt(0);
                var rowIndex = 1;
                while (rowIndex <= sheet.LastRowNum)
                {
                    var row = sheet.GetRow(rowIndex);
                    if (row != null) sheet.RemoveRow(row);
                    rowIndex++;
                }

                // 2. Copy sheet 1 from data sheet to template sheet
                using (StreamReader inputData = new StreamReader(dataFile))
                {
                    HSSFWorkbook dataWorkbook = new HSSFWorkbook(new POIFSFileSystem(inputvar BaseStream));
                    ISheet dataSheet = dataWorkbook.GetSheetAt(0);

                    var rowIdx = 0;
                    while (rowIdx <= dataSheet.LastRowNum)
                    {
                        IRow dataRow = dataSheet.GetRow(rowIdx);
                        IRow newRow = sheet.CreateRow(rowIdx);

                        var cellIdx = 0;
                        while (cellIdx <= dataRow.LastCellNum)
                        {
                            ICell newCell = newRow.CreateCell(cellIdx);
                            ICell oldCell = dataRow.GetCell(cellIdx);
                            if (oldCell != null)
                            {
                                switch (oldCell.CellType)
                                {
                                    case CellType.Blank:
                                        newCell.SetCellValue(oldCell.StringCellValue);
                                        break;
                                    case CellType.Boolean:
                                        newCell.SetCellValue(oldCell.BooleanCellValue);
                                        break;
                                    case CellType.Error:
                                        newCell.SetCellErrorValue(oldCell.ErrorCellValue);
                                        break;
                                    case CellType.Formula:
                                        newCell.SetCellFormula(oldCell.CellFormula);
                                        break;
                                    case CellType.Numeric:
                                        newCell.SetCellValue(oldCell.NumericCellValue);
                                        break;
                                    case CellType.String:
                                        newCell.SetCellValue(oldCell.RichStringCellValue);
                                        break;
                                    case CellType.Unknown:
                                        newCell.SetCellValue(oldCell.StringCellValue);
                                        break;
                                }
                            }
                             
                            cellIdx++;
                        }
                        rowIdx++;
                    }
                }

                // 3. Force template formula to re-evaluate its value
                foreach (ISheet sh in templateWorkbook)
                {
                    sh.ForceFormulaRecalculation = true;
                }

                using (StreamWriter outputTemplate = new StreamWriter(outputFile))
                {
                    templateWorkbook.Write(outputTemplate.BaseStream);
                }
            }
            */

            // EXP code
            /*
            string templateFile = "C:\\Revenue Tracker.xls";
            string dataFile = "C:\\Book1.xls";
            string outputFile = "C:\\Revenue Tracker_Out.xls";

            using (FileStream templateFileStream = new FileStream(templateFile, FileMode.Open, FileAccess.Read))
            {
                HSSFWorkbook templateWorkbook = new HSSFWorkbook(new POIFSFileSystem(templateFileStream));
                HSSFWorkbook outputWorkbook = new HSSFWorkbook();

                using (FileStream dataFileStream = new FileStream(dataFile, FileMode.Open, FileAccess.Read))
                {
                    HSSFWorkbook dataWorkbook = new HSSFWorkbook(new POIFSFileSystem(dataFileStream));
                    foreach (HSSFSheet sheet in dataWorkbook)
                    {
                        cloneSheet(sheet, outputWorkbook);
                    }
                }

                foreach (HSSFSheet sheet in templateWorkbook)
                {
                    if (!sheet.SheetName.Equals("Data", StringComparison.OrdinalIgnoreCase))
                    {
                        cloneSheet(sheet, outputWorkbook);
                    }
                }

                foreach (ISheet sheet in outputWorkbook)
                {
                    sheet.ForceFormulaRecalculation = true;
                }

                using (FileStream stream = new FileStream(outputFile, FileMode.Create, FileAccess.Write))
                {
                    outputWorkbook.Write(stream);
                }
                */

            // THIS CODE PROCESS .XLSX format
            /*
            string templateFile = "C:\\DWFM April 2016 Planning - 0413.xlsx";
            string dataFile = "C:\\Book2.xlsx";
            string outputFile = "C:\\DWFM April 2016 Planning - 0413_Out.xlsx";

            using (FileStream templateFileStream = new FileStream(templateFile, FileMode.Open, FileAccess.Read))
            {
                XSSFWorkbook templateWorkbook = new XSSFWorkbook(OPCPackage.Open(templateFileStream));
                XSSFWorkbook outputWorkbook = new XSSFWorkbook();

                using (FileStream dataFileStream = new FileStream(dataFile, FileMode.Open, FileAccess.Read))
                {
                    XSSFWorkbook dataWorkbook = new XSSFWorkbook(OPCPackage.Open(dataFileStream));
                    foreach (XSSFSheet sheet in dataWorkbook)
                    {
                        cloneSheet(sheet, outputWorkbook);
                    }
                }

                foreach (XSSFSheet sheet in templateWorkbook)
                {
                    if (!sheet.SheetName.Equals("NETSUITE DATA", StringComparison.OrdinalIgnoreCase))
                    {
                        cloneSheet(sheet, outputWorkbook);
                    }
                }

                foreach (ISheet sheet in outputWorkbook)
                {
                    sheet.ForceFormulaRecalculation = true;
                }

                using (FileStream stream = new FileStream(outputFile, FileMode.Create, FileAccess.Write))
                {
                    outputWorkbook.Write(stream);
                }

        }
        */

            // TEST: Read value of cell
            // TODO: Read cell range address: 
            // http://stackoverflow.com/questions/21229203/read-excel-using-npoi-cell-range-address
            /*
            string templateFile = "C:\\DWFM April 2016 Planning - 0413.xlsx";
            string dataFile = "C:\\Book2.xlsx";
            string outputFile = "C:\\DWFM April 2016 Planning - 0413_Out.xlsx";

            using (FileStream templateFileStream = new FileStream(templateFile, FileMode.Open, FileAccess.Read))
            {
                XSSFWorkbook templateWorkbook = new XSSFWorkbook(OPCPackage.Open(templateFileStream));
                XSSFWorkbook outputWorkbook = new XSSFWorkbook();

                using (FileStream dataFileStream = new FileStream(dataFile, FileMode.Open, FileAccess.Read))
                {
                    XSSFWorkbook dataWorkbook = new XSSFWorkbook(OPCPackage.Open(dataFileStream));
                    foreach (XSSFSheet sheet in dataWorkbook)
                    {
                        cloneSheet(sheet, outputWorkbook);
                    }
                }

                foreach (XSSFSheet sheet in templateWorkbook)
                {
                    if (!sheet.SheetName.Equals("NETSUITE DATA", StringComparison.OrdinalIgnoreCase))
                    {
                        cloneSheet(sheet, outputWorkbook);
                    }
                }

                IFormulaEvaluator evaluator = outputWorkbook.GetCreationHelper().CreateFormulaEvaluator();
                foreach (ISheet sheet in outputWorkbook)
                {
                    sheet.ForceFormulaRecalculation = true;
                    
                    if (sheet.SheetName.Equals("Red projects", StringComparison.OrdinalIgnoreCase))
                    {
                        // Read cell G2
                        CellReference cellRef = new CellReference("G2");
                        IRow row = sheet.GetRow(cellRef.Row);
                        if (row != null)
                        {
                            ICell cell = row.GetCell(cellRef.Col);
                            CellValue cellValue = evaluator.Evaluate(cell);

                            switch (cellValue.CellType)
                            {
                                case CellType.Numeric:
                                    Console.Write(cellValue.NumberValue);
                                    break;
                                case CellType.String:
                                    Console.Write(cell.RichStringCellValue);
                                    break;
                            }
                        }
                    }   
                }

                using (FileStream stream = new FileStream(outputFile, FileMode.Create, FileAccess.Write))
                {
                    outputWorkbook.Write(stream);
                }
            }
            */

            test();

        } // End main

        private static void test()
        {
            var reportFilePath= "C:\\Revenue Tracker.xls";

            using (FileStream reportFileStream = new FileStream(reportFilePath, FileMode.Open, FileAccess.Read))
            {
                HSSFWorkbook dataWorkbook = new HSSFWorkbook(new POIFSFileSystem(reportFileStream));
                ISheet sheet = dataWorkbook.GetSheetAt(0);
                int rowIndex = 0;
                foreach (IRow row in sheet)
                {
                    if (rowIndex > 0)
                    {
                        /*
                        var Name = row.GetCell(0).StringCellValue;
                        var Total_Finance_PEPM_Calculated = (decimal)row.GetCell(1).NumericCellValue;
                        var Total_Finance_One_Time_Calculated = (decimal)row.GetCell(2).NumericCellValue;
                        var Month = (int)row.GetCell(3).NumericCellValue;
                        var Year = (int)row.GetCell(4).NumericCellValue;
                        var Contract_Date = row.GetCell(5).DateCellValue;
                        var Projected_Assignment = row.GetCell(6).StringCellValue;
                        var Projected_Project_Start_Date = row.GetCell(7).StringCellValue;
                        var Imp_Planned_KO = row.GetCell(8).StringCellValue;
                        var Status_Comments = row.GetCell(9).StringCellValue;
                        var Hold_Explanation = row.GetCell(10).StringCellValue;
                        var Status = row.GetCell(11).StringCellValue;
                        var PSID = row.GetCell(12).StringCellValue;
                        */
                        var Name = getCellContent(row.GetCell(0));
                        var Total_Finance_PEPM_Calculated = getCellContent(row.GetCell(1));
                        Console.Write(Total_Finance_PEPM_Calculated);
                        var Total_Finance_One_Time_Calculated = getCellContent(row.GetCell(2));
                        var Month = getCellContent(row.GetCell(3));
                        var Year = getCellContent(row.GetCell(4));
                        var Contract_Date = getCellContent(row.GetCell(5));
                        var Projected_Assignment = getCellContent(row.GetCell(6));
                        var Projected_Project_Start_Date = getCellContent(row.GetCell(7));
                        var Imp_Planned_KO = getCellContent(row.GetCell(8));
                        var Status_Comments = getCellContent(row.GetCell(9));
                        var Hold_Explanation = getCellContent(row.GetCell(10));
                        var Status = getCellContent(row.GetCell(11));
                        var PSID = getCellContent(row.GetCell(12));
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
                    content = cell.CellFormula;
                    break;
                case CellType.Numeric:
                    content = cell.NumericCellValue;
                    if (HSSFDateUtil.IsCellDateFormatted(cell))
                    {
                        content = cell.DateCellValue;
                    }
                    break;
                case CellType.String:
                    content = cell.RichStringCellValue;
                    break;
                case CellType.Unknown:
                    content = cell.StringCellValue;
                    break;
                default:
                    break;

            }

            return content;
        }

        private static void cloneSheet(ISheet sheet, IWorkbook outputWorkbook)
        {
            ISheet newSheet = outputWorkbook.CreateSheet(sheet.SheetName);
            
            var rowIdx = 0;
            while (rowIdx <= sheet.LastRowNum)
            {
                IRow dataRow = sheet.GetRow(rowIdx);
                if (dataRow != null)
                {
                    IRow newRow = newSheet.CreateRow(rowIdx);

                    var cellIdx = 0;
                    while (cellIdx <= dataRow.LastCellNum)
                    {
                        ICell newCell = newRow.CreateCell(cellIdx);
                        ICell oldCell = dataRow.GetCell(cellIdx);

                        if (oldCell != null)
                        {
                            try
                            {
                                switch (oldCell.CellType)
                                {
                                    case CellType.Blank:
                                        newCell.SetCellValue(oldCell.StringCellValue);
                                        break;
                                    case CellType.Boolean:
                                        newCell.SetCellValue(oldCell.BooleanCellValue);
                                        break;
                                    case CellType.Error:
                                        newCell.SetCellErrorValue(oldCell.ErrorCellValue);
                                        break;
                                    case CellType.Formula:
                                        newCell.SetCellType(CellType.Formula);
                                        newCell.SetCellFormula(oldCell.CellFormula);
                                        break;
                                    case CellType.Numeric:
                                        newCell.SetCellValue(oldCell.NumericCellValue);
                                        break;
                                    case CellType.String:
                                        newCell.SetCellValue(oldCell.RichStringCellValue);
                                        break;
                                    case CellType.Unknown:
                                        newCell.SetCellValue(oldCell.StringCellValue);
                                        break;
                                }
                            }
                            catch (Exception e)
                            {
                                Console.WriteLine(e.Message);
                            }
                        }

                        cellIdx++;
                    }

                }
                
                rowIdx++;
            }

        }
    }
}
