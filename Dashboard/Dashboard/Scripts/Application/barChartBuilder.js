function BarChartBuilder() {

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
                series: [{ renderer: $.jqplot.BarRenderer }],
                seriesDefaults: {
                    rendererOptions: {
                        barMargin: 10,
                        smooth: true,
                        animation: { show: true }
                    }
                },
                axes: {
                    xaxis: {
                        renderer: $.jqplot.CategoryAxisRenderer,
                        ticks: []
                    },
                    yaxis: {
                        min: 0
                    }
                }
            };

            options.title = chartInfo.chartName;
            options.axes.xaxis.ticks = chartInfo.ticks;
            return $.jqplot(target, [chartInfo.series[0].points], options);
        }
    };
}