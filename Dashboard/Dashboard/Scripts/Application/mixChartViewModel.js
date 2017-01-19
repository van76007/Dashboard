function MixChartViewModel() {
    var self = this;

    // Variables
    var ticks = ["JAN", "FEB", "MAR", "APR"];
    self.mixChartData = {
        barItems: ko.mapping.fromJS([{ "name": "1", "value": 100 }, { "name": "2", "value": 150 }, { "name": "3", "value": 200 }, { "name": "4", "value": 250 }]),
        lineItems: ko.mapping.fromJS([{ "name": "1", "value": 60 }, { "name": "2", "value": 120 }, { "name": "3", "value": 180 }, { "name": "4", "value": 210 }])
    }

    function Item(anItem) {
        var self = this;
        self.name = ko.observable(anItem.name);
        self.value = ko.observable(anItem.value);
    }

    var buildChartPoints = function (items) {
        
        var barArr = items.barItems();
        var lineArr = items.lineItems();
        
        if (barArr.length == 0) {
            console.log('Empty mix chart');
        } else {
            var result = [[], []];
            for (var i = 0; i < barArr.length; i++) {
                var item = barArr[i];
                console.log("Push item.value() " + item.value());
                result[0].push(item.value());
            }

            for (var i = 0; i < lineArr.length; i++) {
                var item = lineArr[i];
                console.log("Push item.name() " + item.name());
                console.log("Push item.value() " + item.value());
                result[1].push([item.name(), item.value()]);
            }
            return result;
        }
    }

    // Update
    self.updateBarSerieInMixChart = function () {
        var request = $.ajax({
            url: "/Home/UpdateBarSerieInMixChart",
            method: "POST",
            async: true
        });

        request.fail(function (jqXHR, textStatus) {
            console.log("Request KO: " + textStatus);
        });

        request.done(function (data, textStatus, jqXHR) {
            ko.mapping.fromJS(data, self.mixChartData.barItems);
        });
    }

    self.updateLineSerieInMixChart = function () {
        var request = $.ajax({
            url: "/Home/UpdateLineSerieInMixChart",
            method: "POST",
            async: true
        });

        request.fail(function (jqXHR, textStatus) {
            console.log("Request KO: " + textStatus);
        });

        request.done(function (data, textStatus, jqXHR) {
            ko.mapping.fromJS(data, self.mixChartData.lineItems);
        });
    }

    var options = {
        stackSeries: true,
        seriesDefaults: {
            renderer: $.jqplot.BarRenderer,
            rendererOptions: {
                barMargin: 20
            },
            pointLabels: {
                show: true,
                stackedValue: true
            }
        },
        series: [{},
                 {
                     disableStack: true,
                     renderer: $.jqplot.LineRenderer,
                     lineWidth: 2,
                     pointLabels: {
                         show: false
                     },
                     markerOptions: {
                         size: 5
                     }
                 }],
        axesDefaults: {
            tickRenderer: $.jqplot.CanvasAxisTickRenderer,
            tickOptions: {
                angle: 30
            }
        },
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: ticks
            },
            yaxis: {
                autoscale: true,
                min: 0
            }
        }
    };

    // Chart
    var mixChart = $.jqplot('mixChart', buildChartPoints(self.mixChartData), options);

    // KO
    ko.bindingHandlers.mixChart = {
        init: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            // This will be called when the binding is first applied to an element
            // Set up any initial state, event handlers, etc. here
            console.log("Init mix chart");
        },
        update: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            console.log("Mix Chart is being update");
            
            // This will be called once when the binding is first applied to an element,
            // and again whenever the associated observable changes value.
            // Update the DOM element based on the supplied values here.
            var value = valueAccessor();      
            // Next, whether or not the supplied model property is observable, get its current value
            var valueUnwrapped = ko.utils.unwrapObservable(value);
            
            if (mixChart) {
                mixChart.destroy();
            }

            mixChart = $.jqplot('mixChart', buildChartPoints(valueUnwrapped), options);
        }
    };
}
