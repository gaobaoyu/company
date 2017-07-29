window.onload = function(){
    var count=0;
    var Msg = document.getElementById("msg");
    var Btn = document.getElementById("btn");
    var Msg_c = document.getElementById("msg_c");
    var Ul = document.createElement("ul"); //定义一个有序的列表
    Msg_c.appendChild(Ul);                 //向Msg_c中添加UL节点

    function beforeSubmit(form){
        if(form.msg.value==''){
            alert("内容不能为空！");
            return false;
        }
    }

    Btn.onclick = function(){              /* 点击留言以后，在Msg_c中添加列表，在列表中添加内容
     在每一条留言后面添加一个<span>标签 使用此标签的onclick属性
     */
        if(beforeSubmit(form)==""){}
        else{
            var date = new Date();
            var MsgValue = Msg.value;
            var Li = document.createElement("li");
            Li.innerHTML = MsgValue+" <span><p>删除</p></span>"+"\n"+ "<p>"+date.toLocaleString()+"</p>";
            var arrayLi = Ul.getElementsByTagName("li") ;  //判断是否是第一个留言
            if(arrayLi.length>0){
                Ul.insertBefore(Li,arrayLi[0]);
                count++;
            }else{
                Ul.appendChild(Li);
                count++;
            }
            Msg.value='';
            var Span = document.getElementsByTagName("span");
            for(var i=0; i<Span.length; i++){
                Span[i].onclick = function(){
                    Ul.removeChild(this.parentNode);
                    count--;
                }
            }
        }
    }

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
            text: 'ppm'
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
        name: '烟感',
//                        data: [80],
        tooltip: {
            valueSuffix: ' ppm '
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
        var chart = new Highcharts.Chart('container_right_wendu', options);
        chart.series[0].setData(arr);
    }

});
});


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
                renderTo: 'container_left_wendu',
                type: 'spline'
            },
            title:{
                text:"数据显示"
            },
            xAxis: {
                type: 'datetime',
                dateTimeLabelFormats: {
                    millisecond: '%H:%M:%S.%L'
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
            series: [{
                name:'湿度',

            },{
                name:'温度',

            },{
                name:'紫外线',

            }],
            credits: {
                enabled: false     //去掉highcharts网站url
            }

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
                		if(value == "B"){
                                arr.push(parseInt(msg[key][value]));
                        }
                		if(value == "A"){
                            arr1.push(parseInt(msg[key][value]));
                		}
                		if(value == "D"){
                            arr2.push(parseInt(msg[key][value]));
                		}
                	}
                    
                }
                var l = arr.length;
//                arr=arr.slice(l-13,l-1);
//                arr1=arr1.slice(l-13,l-1);
                var chart = new Highcharts.Chart('container_left_wendu', options);
                chart.series[0].setData(arr);
                chart.series[1].setData(arr1);
                chart.series[2].setData(arr2);
            }
        });

    });

}

