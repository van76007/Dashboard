function PieChartViewModel() {
    var self = this;

    // Variables
    var itemArray = ko.mapping.fromJS([]);
    self.pieChartData = ko.observableArray(itemArray);

    function Item(anItem) {
        var self = this;
        self.name = ko.observable(anItem.name);
        self.value = ko.observable(anItem.value);
    }

    var buildChartPoints = function (points) {
        if (points.length == 0) {
            console.log("Empty pie chart");
            return [[null]];
        } else {
            var dataArray = [[]];
            for (var i = 0; i < points.length; i++) {
                var item = points[i];
                console.log("Push item name " + item.name());
                console.log("Push item value " + item.value());
                dataArray[0].push([item.name(), item.value()]);
            }
            return dataArray;
        }
    }

    // Update
    self.updatePieChart = function () {
        console.log("To update chart");

        var request = $.ajax({
            url: "/Home/UpdatePieChart",
            method: "POST",
            async: true
        });

        request.fail(function (jqXHR, textStatus) {
            console.log("Request KO: " + textStatus);
        });

        request.done(function (data, textStatus, jqXHR) {
            ko.mapping.fromJS(data, itemArray);
        });
    }

    // Chart
    var options = {
        title: 'Expenses Allocation',
        seriesDefaults: {
            // Make this a pie chart.
            renderer: $.jqplot.PieRenderer,
            rendererOptions: {
                // Put data labels on the pie slices.
                // By default, labels show the percentage of the slice.
                showDataLabels: true
            }
        },
        legend: { show: true, location: 'e' }
    };

    var pieChart = $.jqplot('pieChart', buildChartPoints(self.pieChartData()), options);
    
    // KO
    ko.bindingHandlers.pieChart = {
        init: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            // This will be called when the binding is first applied to an element
            // Set up any initial state, event handlers, etc. here
        },
        update: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            console.log("Pie Chart is being update");
            // This will be called once when the binding is first applied to an element,
            // and again whenever the associated observable changes value.
            // Update the DOM element based on the supplied values here.
            var value = valueAccessor();
            
            // Next, whether or not the supplied model property is observable, get its current value
            var valueUnwrapped = ko.utils.unwrapObservable(value);
            var data = buildChartPoints(valueUnwrapped)[0];
            if (data[0] != null) {
                pieChart.series[0].data = data;
                pieChart.replot();
            }
        }
    };
}