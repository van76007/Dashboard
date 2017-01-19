function PieChartBuilder() {
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
                seriesDefaults: {
                    renderer: $.jqplot.PieRenderer,
                    rendererOptions: {
                        showDataLabels: true,
                        dataLabels: 'value',
                        startAngle: -90,
                        dataLabelThreshold: 0,
                        sliceMargin: 5,
                        smooth: true,
                        animation: { show: true }
                    }
                },
                legend: {
                    show: true,
                    placement: 'inside',
                    location: 'e'
                }
            };

            options.title = chartInfo.chartName;

            var data = [];
            for (i = 0; i < chartInfo.ticks.length; i++) {
                data.push([chartInfo.ticks[i], chartInfo.series[0].points[i]]);
            }
            return $.jqplot(target, [data], options);
        }
    };
}