<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/data.css">
    <link rel="stylesheet" href="../css/init.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <title>开发者中心</title>
</head>
<body>
    <iframe frameborder="0" scrolling="no" src="${pageContext.request.contextPath}/title.jsp" style="width:100%;height:13%;"></iframe>
    <div class="content">
        <div id="data">
            <div style="width:100%;height:40%;" id="container"></div>

            <!--<hr />-->
            <div style="width:40%;height:40%;" id="container1"></div>
            <div style="width:40%;height:40%;" id="container2"></div>
            <div id="led">
                <span>LED ：</span><img id="switch" style="width:10%;height:3%;margin-top: 5%;"
                                        src="${pageContext.request.contextPath}/images/on.png" alt="" onclick="change_led()">
                <img id="deng" src="${pageContext.request.contextPath}/images/r12.png" style="width:20%;height:20%;margin-top: 5%;" alt="">
            </div>
        </div>
    </div>
    <!--底部-->
    <div class="footer">
        <ul>
            <li>
                <h4 style="color: white; margin-top: 20px">语言</h4>
                <br/>
                <a href="#">
                <div style="float: left; position: relative; left: 45px"><img src="../images/ChinaFlag.png" style="float: left; margin-left: 10px;"/></div>
                <div style="color: white">中文</div>
                </a>
                <br/>
                <a href="#">
                    <div style="float: left; position: relative; left: 45px"><img src="../images/EnglandFlag.png" style="float: left; margin-left: 10px;"/></div>
                    <div>英文</div>
                </a>
                <br/>
            </li>
            <li>
                <h4 style="color: white; margin-top: 20px">关于我们</h4>
                <br/>
                <a href="#">
                   我们是谁
                </a>
                <br/>
                <a href="#">
                    可信云认证
                </a>
                <br/>
                <a href="#">
                    加入我们
                </a>
                <br/>
                <a href="#">
                    成功案例
                </a>
                <br/>
            </li>
            <li>
                <h4 style="color: white; margin-top: 20px">开发者</h4>
                <br/>
                <a href="#">
                    快速接入设备
                </a>
                <br/>
                <a href="#">
                    开发文档
                </a>
                <br/>
                <a href="#">
                    服务协议
                </a>
            </li>
            <li style="width: 17.8%">
                <h4 style="color: white; margin-top: 20px">友情链接</h4>
                <br/>
                <a href="#">
                    中移物联网
                </a>
                <br/>
                <a href="#">
                    物联网专网
                </a>
                <br/>
                <a href="#">
                    Android中文社区
                </a>
            </li>
            <li>
                <h4 style="color: white; margin-top: 20px">APP下载</h4>
                <br/>
                <img alt="二维码"/>
            </li>
            <li style="width: 24.6%">
                <h4 style="color: white; margin-top: 20px">联系方式</h4>
                <br/>
                <a href="#">
                    电话：123456789
                </a>
                <br/>
                <a href="#">
                    QQ：12345678
                </a>
            </li>
        </ul>
    </div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/k_index.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/modules/exporting.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/js/data.js"></script>
<script src="${pageContext.request.contextPath}/js/data1.js"></script>
<script src="${pageContext.request.contextPath}/js/data2.js"></script>
<script src="${pageContext.request.contextPath}/js/data3.js"></script>
<script src="${pageContext.request.contextPath}/js/data4.js"></script>
<script src="${pageContext.request.contextPath}/js/data5.js"></script>
</html>
