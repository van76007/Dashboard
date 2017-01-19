function SeriesTableViewModel(postBox, itemsReadFromDB) {
    var self = this;

    // Controllable from drop down of Chart type
    self.serieType = ['BarSerie', 'LineSerie', 'PieSerie'];

    var itemsArr = [];
    this.items = ko.observableArray(itemsArr);
    this.itemName = ko.observableArray([]);
    this.multipleSelect = true;
    this.chartName = ko.observable("");
    this.chartType = ko.observable("");

    this.chart = {};
    this.seriesofchart = [];

    self.columnNames = ko.computed(function () {
        if (self.items().length === 0)
            return [];

        var colNames = [];
        var obj = self.items()[0];
        for (var name in obj) {
            if (name !== 'selectedSerieType' && name !== 'points' && name !== 'ticks') {
                colNames.push(name);
            }
        }
        return colNames;
    });

    postBox.subscribe(function (newValue) {
        $("#PreviewChartBtn").css("display", "block");
        $("div#ChartCanvas").remove();
        $("#confirmationMessage").text('');

        for (var i = 0; i < newValue.length; i++) {
            var item = newValue[i];
            console.log('Selected serie ' + item.serieLabel);

            if (this.multipleSelect) {
                for (var j = 0; j < itemsReadFromDB.length; j++) {
                    var itemInDB = itemsReadFromDB[j];

                    if (itemInDB.serieName === item.serieLabel) {
                        if (self.itemName.indexOf(item.serieLabel) == -1) {
                            self.items.push(itemInDB);
                            self.itemName.push(item.serieLabel);
                        }
                    }
                }
            }
            else
            {
                console.log('this.multipleSelect is ' + this.multipleSelect);
                self.items().length = 0;
                self.itemName().length = 0;

                for (var j = 0; j < itemsReadFromDB.length; j++) {
                    var itemInDB = itemsReadFromDB[j];
                    
                    if (itemInDB.serieName === item.serieLabel) {
                        self.items.push(itemInDB);
                        self.itemName.push(item.serieLabel);
                        break;
                    }
                }
            }
            
            
        }
    }, this, "selectSeriesTopic");

    postBox.subscribe(function (newValue) {
        $("div#ChartCanvas").remove();
        $("#confirmationMessage").text('');

        var item = newValue[0];
        console.log('Selected chart type ' + item.chartTypeLabel);

        $("#ChosenSeries").empty();
        self.items().length = 0;
        self.itemName().length = 0;

        if (item.chartTypeLabel == "Select One Chart Type") {
            self.chartType = 0;
            $('#SerieSelection').prop('disabled', 'disabled');
        } else {
            $('#SerieSelection').prop('disabled', false);
        }

        if (item.chartTypeLabel == "BarChart") {
            self.chartType = 1;
            self.serieType = ['BarSerie'];
            $("#SerieSelection").removeAttr("multiple");
            this.multipleSelect = false;
        }

        if (item.chartTypeLabel == "PieChart")
        {
            self.chartType = 2;
            self.serieType = ['PieSerie'];
            $("#SerieSelection").removeAttr("multiple");
            this.multipleSelect = false;
        }

        if (item.chartTypeLabel == "StackBarChart") {
            self.chartType = 3;
            self.serieType = ['BarSerie'];
            $("#SerieSelection").attr("multiple", "multiple");
            this.multipleSelect = true;
        }

        if (item.chartTypeLabel == "MultiBarChart") {
            self.chartType = 4;
            self.serieType = ['BarSerie'];
            $("#SerieSelection").attr("multiple", "multiple");
            this.multipleSelect = true;
        }

        if (item.chartTypeLabel == "MixChart") {
            self.chartType = 5;
            self.serieType = ['BarSerie', 'LineSerie'];
            $("#SerieSelection").attr("multiple", "multiple");
            this.multipleSelect = true;
        }
    }, this, "selectChartTypeTopic");

    postBox.subscribe(function (newValue) {
        var item = newValue;
        console.log('Entered chart name ' + item);
        self.chartName = item;
    }, this, "enterChartNameTopic");

    this.removeSerie = function (serie, columnName) {
        console.log('Remove Serie');
        self.items.remove(serie);
        self.itemName.remove(serie.serieName);
        showPreview();
    };

    this.previewChart = function () {
        showPreview();
    }

    var showPreview = function() {
        console.log('Select chart name ' + self.chartName);
        console.log('Select chart type ' + self.chartType);

        console.log('Select series...');
        for (var i = 0; i < self.items().length; i++) {
            console.log('SerieName ' + self.items()[i].serieName);
            console.log('Selected serieType ' + self.items()[i].selectedSerieType());
        }

        // Validate input before previewing chart
        if (validateInput()) {
            // Display previewed chart
            showChart();
        } else {
            $("div#ChartCanvas").remove();
        }
    }

    this.savePreviewChart = function () {
         
        var request = $.ajax({
            url: "/BuildChart/SaveCharts",
            method: "POST",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(self.chart),
            async: true
        });

        request.fail(function (jqXHR, textStatus) {
            console.log("Request KO: " + textStatus);
            $("#confirmationMessage").removeClass("text-success");
            $("#confirmationMessage").addClass("text-warning");
            $("#confirmationMessage").text('Saving chart failed!');
        });

        request.done(function (data, textStatus, jqXHR) {
            console.log("Request OK: " + textStatus);
            $("#confirmationMessage").removeClass("text-warning");
            $("#confirmationMessage").addClass("text-success");
            $("#confirmationMessage").text('Chart saved successfully!');
        });
    }

    var validateInput = function () {
        // Validate that StackBar chart, MultiBarChart and MixChart must include at least 2 series
        if (self.multipleSelect && self.items().length <= 1) {
            console.log('You must select more than 1 series for this type of chart');
            $("#seriesTableCanvas").next().text('You must select more than 1 series for this type of chart');
            return false;
        }

        // Validate that MixChart must include 1 Bar serie and at least 1 line serie
        if (self.chartType == 5) {
            var numOfBarSerie = 0;
            var numOfLineSerie = 0;
            for (var i = 0; i < self.items().length; i++) {
                if (self.items()[i].selectedSerieType() == 'BarSerie') {
                    numOfBarSerie++;
                }

                if (self.items()[i].selectedSerieType() == 'LineSerie') {
                    numOfLineSerie++;
                }
            }

            if (numOfBarSerie != 1 || numOfLineSerie == 0 ) {
                $("#seriesTableCanvas").next().text('You must select 1 Bar serie and more than 1 Line serie');
                return false;
            }
        }

        $("#seriesTableCanvas").next().text('');
        return true;
    }

    var showChart = function () {
        var chartInfo = {
            chartType: self.chartType,
            chartName: self.chartName,
            reportId:  $('#SelectedReportId').val(),
            ticks: [],
            series: [],
        };

        var map = { 'BarSerie': 1, 'LineSerie': 2, 'PieSerie': 3 };
        for (var i = 0; i < self.items().length; i++) {
            var s = self.items()[i];
            var aSerie = {
                serieType: map[s.selectedSerieType()],
                serieName: s.serieName,
                points: s.points,
                ticks: s.ticks
            };

            if (chartInfo.ticks.length == 0) {
                chartInfo.ticks = s.ticks;
            }
            chartInfo.series.push(aSerie);
        }

        self.chart = chartInfo;
        console.log(chartInfo);

        $("#SavePreviewChartBtn").css("display", "block");

        $("div#ChartCanvas").remove();
        $("#seriesTableCanvas").append("<div id='ChartCanvas' style='width: 100%; height: 600px; position:relative;'></div>");

        switch (chartInfo.chartType) {
            case 1:
                var barChartBuilder = new BarChartBuilder();
                barChartBuilder.withTarget('ChartCanvas').withChartInfo(chartInfo).build();
                break;
            case 2:
                var pieChartBuilder = new PieChartBuilder();
                pieChartBuilder.withTarget('ChartCanvas').withChartInfo(chartInfo).build();
                break;
            case 3:
                var stackBarChartBuilder = new StackBarChartBuilder();
                stackBarChartBuilder.withTarget('ChartCanvas').withChartInfo(chartInfo).build();
                break;
            case 4:
                var multiBarChartBuilder = new MultiBarChartBuilder();
                multiBarChartBuilder.withTarget('ChartCanvas').withChartInfo(chartInfo).build();
                break;
            case 5:
                var mixChartBuilder = new MixChartBuilder();
                mixChartBuilder.withTarget('ChartCanvas').withChartInfo(chartInfo).build();
                break;
            default:
        }
    }
}