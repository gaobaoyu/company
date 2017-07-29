$(function () {
Highcharts.setOptions({
    lang: {
        printChart:"打印图表",
        downloadJPEG: "下载JPEG 图片" ,
        downloadPDF: "下载PDF文档"  ,
        downloadPNG: "下载PNG 图片"  ,
        downloadSVG: "下载SVG 矢量图" ,
        exportButtonTitle: "导出图片"
    }
});
var options = {
    chart: {
        type: 'gauge',
        plotBackgroundColor: null,
        plotBackgroundImage: null,
        plotBorderWidth: 0,
        plotShadow: false
    },
    title: {
        text: '光照强度'
    },
    pane: {
        startAngle: -150,
        endAngle: 150,
        background: [{
            backgroundColor: {
                linearGradient: {x1: 0, y1: 0, x2: 0, y2: 1},
                stops: [
                    [0, '#FFF'],
                    [1, '#333']
                ]
            },
            borderWidth: 0,
            outerRadius: '109%'
        }, {
            backgroundColor: {
                linearGradient: {x1: 0, y1: 0, x2: 0, y2: 1},
                stops: [
                    [0, '#333'],
                    [1, '#FFF']
                ]
            },
            borderWidth: 1,
            outerRadius: '107%'
        }, {
            // default background
        }, {
            backgroundColor: '#DDD',
            borderWidth: 0,
            outerRadius: '105%',
            innerRadius: '103%'
        }]
    },
    // the value axis
    yAxis: {
        min: 0,
        max: 10000,
        minorTickInterval: 'auto',
        minorTickWidth: 1,
        minorTickLength: 10,
        minorTickPosition: 'inside',
        minorTickColor: '#666',
        tickPixelInterval: 30,
        tickWidth: 2,
        tickPosition: 'inside',
        tickLength: 10,
        tickColor: '#666',
        labels: {
            step: 2,
            rotation: 'auto'
        },
        title: {
            text: 'test1'
        },
        plotBands: [{
            from: 0,
            to: 6000,
            color: '#55BF3B' // green
        }, {
            from: 6000,
            to: 8000,
            color: '#DDDF0D' // yellow
        }, {
            from: 8000,
            to: 10000,
            color: '#DF5353' // red
        }]
    },
	credits: {
	    enabled: false     //去掉highcharts网站url
	},
    series: [{
        name: '光照',
        tooltip: {
            valueSuffix: ' Lx '
        }
    }]
}
var arr = [];
$.ajax({
    type: "GET",
    url: "http://139.199.97.82:8080/company/data/findNew.htm",
    data: null,
    success: function(msg){

        msg=JSON.parse(msg);
        for(var key in msg){
        	for(var value in msg[key]){
        		if(value == "C"){
                        arr.push(parseInt(msg[key][value]));
                }
        		
        	}
            
        }
        var l = arr.length;
        arr=arr.slice(l-13,l-2);
        // console.log(arr);
        var chart = new Highcharts.Chart('container1', options);
        chart.series[0].setData(arr);
    }

});
});