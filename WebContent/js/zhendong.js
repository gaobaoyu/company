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
            renderTo: 'zhendong',
            type: 'spline'
        },
        title:{
            text:"数据显示"
        },
        xAxis: {
            type: 'datetime',
            dateTimeLabelFormats: {
                millisecond: '%H:%M:%S.%L',
            },
            crosshair: true,
            title:{
                enabled:true,
                text:"时间"
            }
        },
        yAxis:[{
            crosshair: true,//十字准星
            gridLineColor: '#197F07', //绿色网格线
            title:{
                enabled:true,
               
            }
        }],
        navigation: {
            buttonOptions: {
                align: 'right',
                enabled: true
            }
        },
	credits: {
	    enabled: false     //去掉highcharts网站url
	},
        series: [{
            name:'x轴加速度',
            
        },{
            name:'y轴加速度',
           
        },{
            name:'z轴加速度',
        }]
    };
    var arr = [];
    var arr1 = [];
    var arr2 = [];
    $.ajax({
        type: "GET",
        url: "http://139.199.97.82:8080/company/data/findNew.htm",
        data: null,
        success: function(msg){

            msg=JSON.parse(msg);
            for(var key in msg){
            	for(var value in msg[key]){
            		if(value == "I"){
                            arr.push(parseInt(msg[key][value]));
                    }
            		if(value == "J"){
                        arr1.push(parseInt(msg[key][value]));
            		}
            		if(value == "K"){
                        arr2.push(parseInt(msg[key][value]));
            		}
            	}
                
            }
            var l = arr.length;
//            arr=arr.slice(l-13,l-1);
//            arr1=arr1.slice(l-13,l-1);
            var chart = new Highcharts.Chart('zhendong', options);
            chart.series[0].setData(arr);
            chart.series[1].setData(arr1);
            chart.series[2].setData(arr2);
        }
    });

});
