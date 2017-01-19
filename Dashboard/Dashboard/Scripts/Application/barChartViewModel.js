function BarChartViewModel() {
    var self = this;

    // Variables
    var itemArray = ko.mapping.fromJS([]);
    self.barChartData = ko.observableArray(itemArray);

    function Item(anItem) {
        var self = this;
        self.name = ko.observable(anItem.name);
        self.value = ko.observable(anItem.value);
    }

    var buildChartPoints = function (points) {
        
        if (points.length == 0) {
            console.log("Empty bar chart");
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
    self.updateBarChart = function () {
        var request = $.ajax({
            url: "/Home/UpdateBarChart",
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
        title: 'Title',
        series: [{ renderer: $.jqplot.BarRenderer }],
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer
            },
            yaxis: {
                label: 'Total in Dollars',
                tickOptions: {
                    formatString: "$%'d"
                },
                min: 0
            }
        }
    };

    var barChart = $.jqplot('barChart', buildChartPoints(self.barChartData()), options);

    // KO
    ko.bindingHandlers.barChart = {
        init: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            // This will be called when the binding is first applied to an element
            // Set up any initial state, event handlers, etc. here
            console.log("Init bar chart");
        },
        update: function (element, valueAccessor, allBindings, viewModel, bindingContext) {
            console.log("Update bar chart");

            // This will be called once when the binding is first applied to an element,
            // and again whenever the associated observable changes value.
            // Update the DOM element based on the supplied values here.
            var value = valueAccessor();
            // Next, whether or not the supplied model property is observable, get its current value
            var valueUnwrapped = ko.utils.unwrapObservable(value);

            //Destroy rather than replot chart
            if(barChart) {
                barChart.destroy();
            }

            barChart = $.jqplot('barChart', buildChartPoints(valueUnwrapped),
            {
                title: 'Title',
                series: [{ renderer: $.jqplot.BarRenderer }],
                axes: {
                    xaxis: {
                        renderer: $.jqplot.CategoryAxisRenderer
                    },
                    yaxis: {
                        label: 'Total in Dollars',
                        tickOptions: {
                            formatString: "$%'d"
                        },
                        min: 0,
                        max: 500
                    }
                }
            });
        }
    };
}
