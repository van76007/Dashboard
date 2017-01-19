function StackChartViewModel() {
    var self = this;

    // Variables
    var ticks = ['Germany', 'Italy', 'Spain', 'France'];
    self.stackChartData = {
        firstSerie: ko.mapping.fromJS([{ "name": "Germany", "value": 10 }, { "name": "Italy", "value": 20 }, { "name": "Spain", "value": 30 }, { "name": "France", "value": 40 }]),
        secondSerie: ko.mapping.fromJS([{ "name": "Germany", "value": 15 }, { "name": "Italy", "value": 25 }, { "name": "Spain", "value": 35 }, { "name": "France", "value": 5 }])
    }

    function Item(anItem) {
        var self = this;
        self.name = ko.observable(anItem.name);
        self.value = ko.observable(anItem.value);
    }

    var buildChartPoints = function (data) {
        var firstSeries = data.firstSerie();
        var secondSeries = data.secondSerie();

        if (firstSeries.length == 0) {
            console.log("Empty stack chart");
        } else {
            var result = [[], []];
            for (var i = 0; i < firstSeries.length; i++) {
                var item = firstSeries[i];
                //console.log("Push item.value() " + item.value());
                result[0].push(item.value());
            }

            for (var i = 0; i < secondSeries.length; i++) {
                var item = secondSeries[i];
                //console.log("Push item.value() " + item.value());
                result[1].push(item.value());
            }

            return result;
        }
    }

    // Update
    self.updateFirstSerieInStackChart = function () {
        var request = $.ajax({
            url: "/Home/UpdateFirstSerieInStackChart",
            method: "POST",
            async: true
        });

        request.fail(function (jqXHR, textStatus) {
            console.log("Request KO: " + textStatus);
        });

        request.done(function (data, textStatus, jqXHR) {
            ko.mapping.fromJS(data, self.stackChartData.firstSerie);
        });
    }

    self.updateSecondSerieInStackChart = function () {
        var request = $.ajax({
            url: "/Home/UpdateSecondSerieInStackChart",
            method: "POST",
            async: true
        });

        request.fail(function (jqXHR, textStatus) {
            console.log("Request KO: " + textStatus);
        });

        request.done(function (data, textStatus, jqXHR) {
            ko.mapping.fromJS(data, self.stackChartData.secondSerie);
        });
    }

    var options = {
        title: 'Foreign Customers',
        stackSeries: true,
        seriesDefaults: {
            renderer: $.jqplot.BarRenderer,
            pointLabels: { show: true, location: 's' }
        },
        series: [
            { label: 'Electronics' },
            { label: 'Software' }
        ],
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: ticks
            },
            yaxis: {
                autoscale: true,
                min: 0
            }
        },
        legend: {
            show: true,
            placement: 'outsideGrid',
            location: 'e'
        }
    };

    // Chart
    var stackChart = $.jqplot('stackChart', buildChartPoints(self.stackChartData), options);

    // KO
    ko.bindingHandlers.stackChart = {
        init: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            // This will be called when the binding is first applied to an element
            // Set up any initial state, event handlers, etc. here
            console.log("Init Stack Chart");
        },
        update: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            console.log("Stack Chart is being update");

            // This will be called once when the binding is first applied to an element,
            // and again whenever the associated observable changes value.
            // Update the DOM element based on the supplied values here.
            var value = valueAccessor();
            // Next, whether or not the supplied model property is observable, get its current value
            var valueUnwrapped = ko.utils.unwrapObservable(value);

            if (stackChart) {
                stackChart.destroy();
            }

            stackChart = $.jqplot('stackChart', buildChartPoints(valueUnwrapped), options);
        }
    };
}