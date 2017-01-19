function StackBarChartBuilder() {
    var target;
    var chartInfo;

    return {
        withTarget: function (anotherTarget) {
            target = anotherTarget;
            return this;
        },
        withChartInfo: function (anotherChartInfo) {
            chartInfo = anotherChartInfo;
            return this;
        },
        build: function () {
            var options = {
                title: '',
                seriesColors: ["#418FDE", "#FCB040", "#6CC24A"],
                stackSeries: true,
                seriesDefaults: {
                    renderer: $.jqplot.BarRenderer,
                    smooth: true,
                    animation: { show: true },
                    pointLabels: { show: true, location: 's' }
                },
                series: [],
                axes: {
                    xaxis: {
                        renderer: $.jqplot.CategoryAxisRenderer,
                        ticks: []
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

            options.title = chartInfo.chartName;
            options.axes.xaxis.ticks = chartInfo.ticks;

            var data = [];
            for (i = 0; i < chartInfo.series.length; i++) {
                data.push(chartInfo.series[i].points);
                options.series.push({ label: chartInfo.series[i].serieName });
            }
            return $.jqplot(target, data, options);
        }
    };
}