function MixChartBuilder() {
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
                seriesDefaults: {
                    renderer: $.jqplot.BarRenderer,
                    rendererOptions: {
                        smooth: true,
                        animation: { show: true }
                    }
                },
                series: [],
                axes: {
                    xaxis: {
                        renderer: $.jqplot.CategoryAxisRenderer,
                        ticks: []
                    },
                    yaxis: {
                        autoscale: true
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

            chartInfo.series.sort(function (s1, s2) {
                if (s1.serieType < s2.serieType) return -1;
                if (s1.serieType > s2.serieType) return 1;
            });

            var data = [];
            for (i = 0; i < chartInfo.series.length; i++) {
                data.push(chartInfo.series[i].points);
               
                if (chartInfo.series[i].serieType == 1) {
                    options.series.push({
                        renderer: $.jqplot.BarRenderer,
                        rendererOptions: {
                            shadowAlpha: 0.8,
                            shadowAngle: 45,
                            smooth: true,
                            animation: { show: true }
                        },
                        label: chartInfo.series[i].serieName,
                        pointLabels: { show: true, location: 'n' }
                    });
                }

                if (chartInfo.series[i].serieType == 2) {
                    options.series.push({
                        disableStack: true,
                        renderer: $.jqplot.LineRenderer,
                        rendererOptions: {
                            smooth: true,
                            animation: { show: true }
                        },
                        label: chartInfo.series[i].serieName
                    });
                }
            }
            return $.jqplot(target, data, options);
        }
    };
}