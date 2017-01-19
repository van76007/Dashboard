function SeriesSelectionViewModel(postBox, seriesArr) {
    var self = this;

    // Hard-coded
    var chartTypesArr = [
        {
            'chartTypeLabel': 'Select One Chart Type'
        },
        {
            'chartTypeLabel': 'BarChart'
        },
        {
            'chartTypeLabel': 'PieChart'
        },
        {
            'chartTypeLabel': 'StackBarChart'
        },
        {
            'chartTypeLabel': 'MultiBarChart'
        },
        {
            'chartTypeLabel': 'MixChart'
        }
    ];

    self.chartName = ko.observable("");

    self.chartTypes = ko.observableArray(chartTypesArr);
    self.selectedChartTypes = ko.observableArray([]);
    
    self.series = ko.observableArray(seriesArr);
    self.selectedSeries = ko.observableArray([]);

    self.selectedChartTypes.subscribe(function (newValue) {
        postBox.notifySubscribers(newValue, "selectChartTypeTopic");
    });

    self.selectedSeries.subscribe(function (newValue) {
        postBox.notifySubscribers(newValue, "selectSeriesTopic");
    });

    self.chartName.subscribe(function (newValue) {
        postBox.notifySubscribers(newValue, "enterChartNameTopic");
    });
}