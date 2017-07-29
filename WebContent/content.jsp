<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>电力通信的“全科医生”--基于畅享物联平台的通信辅助检测系统</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-content.css">
</head>
<body>
    <!--轮播图-->
    <div id="myCarousel"class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
            <li data-target="#myCarousel" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active ">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/images/slideshow1.jpg" alt="第一张图片" style="width: 100%; height: 480px"/>
                </a>
            </div>
            <div class="item ">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/images/slideshow2.jpg" alt="第二张图片" style="width: 100%; height: 480px"/>
                </a>
            </div>
            <div class="item ">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/images/slideshow3.jpg" alt="第三张图片" style="width: 100%; height: 480px"/>
                </a>
            </div>
            <div class="item ">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/images/slideshow4.jpg" alt="第四张图片" style="width: 100%; height: 480px"/>
                </a>
            </div>
            <div class="item ">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/images/slideshow5.jpg" alt="第五张图片" style="width: 100%; height: 480px"/>
                </a>
            </div>
            <div class="item ">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/images/slideshow6.jpg" alt="第六张图片" style="width: 100%; height: 480px"/>
                </a>
            </div>
        </div>
    </div>
    <script>
        /*var l = $('.zan');
         alert(l.length);*/
        $(function() {
            $(window).resize(function () {                             //响应式
                var $height = $('.carousel-inner img').eq(0).height() ||
                    $('.carousel-inner img').eq(1).height() ||
                    $('.carousel-inner img').eq(2).height() ||
                    $('.carousel-inner img').eq(3).height() ||
                    $('.carousel-inner img').eq(4).height() ||
                    $('.carousel-inner img').eq(5).height();
                $('.carousel-control').css('line-height', $height + 'px');
            });

            $('#myCarousel').carousel({interval: 10000});  //轮播图自动播放
        });
    </script>
    <div class="text1">畅享物联开放平台为您推荐全面完备的 IOT 云服务</div>
    <!--云服务-->
    <div class="tab">
        <div class="tab_box">
            <div>为IoT开发者提供智能设备自助开发工具、后台技术支持服务，为您提供物联<br/>
                网专网、短彩信、位置定位、设备管理、消息分发、远程升级等基础服务</div>
            <div>为您提供第三方应用开发平台，快速实现不同业务需求，借助轻应用孵化器快<br/>
                速搭建属于自己的web和APP应用</div>
            <div>高扩展的数据库、实时数据处理、智能预测离线数据分析、数据可视化展示等<br/>
                为您提供多维度的业务运营服务</div>
            <div>高频的开发者社区，汇聚着不同的知识源，帮您结交更多的物联网爱好者，让<br/>
                项目与开发成果开始传播</div>
        </div>
        <div class="tab_menu">
            <ul>
                <li class="on">
                    <a  style="position: absolute; left: 13.2%">
                        <img src="${pageContext.request.contextPath}/images/yun1.png" style="margin-top: 30px">
                        <div>IoT&ensp;PaaS&ensp;基础能力</div>
                    </a>
                </li>
                <li>
                    <a style="position: absolute; left: 31.5%">
                        <img src="${pageContext.request.contextPath}/images/yun2.png" style="margin-top: 30px">
                        <div>SaaS&ensp;业务服务</div>
                    </a>
                </li>
                <li>
                    <a  style="position: absolute; left: 49.8%">
                        <img src="${pageContext.request.contextPath}/images/yun3.png" style="margin-top: 30px">
                        <div>IoT&ensp;数据云</div>
                    </a>
                </li>
                <li>
                    <a  style="position: absolute; left: 68.1%">
                        <img src="${pageContext.request.contextPath}/images/yun4.png" style="margin-top: 30px">
                        <div>开发者工具</div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        $(function(){
            $(".tab_menu ul li").hover(function(){
                $(this).addClass("on").siblings().removeClass("on"); //切换选中的按钮高亮状态
                var index=$(this).index(); //获取被按下按钮的索引值，需要注意index是从0开始的
                $(".tab_box > div").eq(index).show().siblings().hide(); //在按钮选中时在下面显示相应的内容，同时隐藏不需要的框架内容
            });
        });
    </script>
    <!--图片-->
    <div class="bgImg">
        <div>完善的功能助您上云更轻松、方便、高效</div>
    </div>
    <!--功能-->
    <div style="background-color: #EAEFF2">
    <div style="font-size: 25px; padding-top: 50px; font-weight: bold; text-align: center;">
        快速了解畅享物联平台
    </div>
    <div class="function">
        <ul>
        <li class="childFun">
            <img src="${pageContext.request.contextPath}/images/function1.png"><br/>
            <span style="font-weight: bold; font-size: 17px"><br/>流分析</span>
            <div>开发者自定义设备数据流类型和数据模板，让上传数据可视化展示</div>
        </li>
        <li class="childFun">
            <img src="${pageContext.request.contextPath}/images/function2.png"><br/>
            <span style="font-weight: bold; font-size: 17px"><br/>设备云端管理</span>
            <div>实时监控管理接入设备的状态与运行情况，并对设备进行远程操作</div>
        </li>
        <li class="childFun">
            <img src="${pageContext.request.contextPath}/images/function3.png"><br/>
            <span style="font-weight: bold; font-size: 17px"><br/>多协议适配</span>
            <div>支持多种网络接入协议，轻松接入各种物联网设备、智能家居、汽车、穿戴设备、行业终端等</div>
        </li>
        <li class="childFun">
            <img src="${pageContext.request.contextPath}/images/function4.png"><br/>
            <span style="font-weight: bold; font-size: 17px"><br/>轻应用快速生成</span>
            <div>提供的轻应用业务孵化平台，快速帮您搭建web和APP应用</div>
        </li>
        <li class="childFun">
            <img src="${pageContext.request.contextPath}/images/function5.png"><br/>
            <span style="font-weight: bold; font-size: 17px"><br/>API</span>
            <div>开放、完善的API接口便于用户在SaaS层与PaaS层对接</div>
        </li>
        <li class="childFun">
            <img src="${pageContext.request.contextPath}/images/function6.png" style="width: 150px"><br/>
            <span style="font-weight: bold; font-size: 17px"><br/>在线调试</span>
            <div>提供虚拟的在线调试工具，方便开发者进行设备接入等调试</div>
        </li>
        </ul>
    </div>
    </div>

    <script type="text/javascript">
        $(function(){
            $(".function li").hover(function(){
                 $(this).children('div').toggle();  //显示文字
            });
        });

        $(function(){
            $(".function li").click(function(){
                var index = $(this).index(); //获取被按下按钮的索引值，需要注意index是从0开始的
                var p = 40 - index * 17.6;
                var result = p + "%";
                console.log(result);
                $(this).parent("ul").css("margin-left", result);
            });
        });

    </script>

    <!--快速了解-->
    <div class="case">
        <div class="text1">电力通信的“全科医生”为您提供的产品功能</div>
        <ul>
            <li>
                <a ><img src="${pageContext.request.contextPath}/images/wendu.jpg"/></a>
                <div>监控温度湿度光照强度</div>
            </li>
            <li>
                <a ><img src="${pageContext.request.contextPath}/images/fengli.jpg"/></a>
                <div>监测风速风力风向</div>
            </li>
            <li>
                <a ><img src="${pageContext.request.contextPath}/images/yanwu.jpg"/></a>
                <div>监测烟雾</div>
            </li>
            <li>
                <a ><img src="${pageContext.request.contextPath}/images/daqiya.jpg"/></a>
                <div>监测大气压</div>
            </li>
        </ul>
    </div>

    <!--模组芯片展示-->
    <div class="show">
        <div class="text1">模组芯片展示</div>
        <img src="${pageContext.request.contextPath}/images/chip.jpg"/>
        <div class="rightPart">
            <div style="font-size: 20px; font-weight: bold; padding-top: 10px">畅享物联云平台助你验证想法</div>
            <p style="margin-top: 40px; width: 71.7%; font-size: 15px">我们为您提供开发板，30分钟可搭建自己
                的智能硬件，迈出您进入物联网世界的第一步。 麒麟座开发板使用STM32的单片机，配备了光学、
                倾角、温湿度等多个传感器，支持WIFI和GPRS联网两种模式， 对于开发者来说，最便利的是它预置
                了创想物联云的连接协议， 只需要进行简单操作，就可以和创想物联云平台进行数据传输和实现反向控制。</p>
            <a href="#">立即申请</a>
        </div>
    </div>

    <!--底部-->
    <div class="footer">
        <ul>
            <li>
                <h4 style="color: white; margin-top: 20px">语言</h4>
                <br/>
                <a href="#">
                <div style="float: left; position: relative; left: 45px"><img src="${pageContext.request.contextPath}/images/ChinaFlag.png" style="float: left; margin-left: 10px;"/></div>
                <div style="color: white">中文</div>
                </a>
                <br/>
                <a href="#">
                    <div style="float: left; position: relative; left: 45px"><img src="${pageContext.request.contextPath}/images/EnglandFlag.png" style="float: left; margin-left: 10px;"/></div>
                    <div>英文</div>
                </a>
                <br/>
            </li>
            <li>
                <h4 style="color: white; margin-top: 20px">关于我们</h4>
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
                <img style="width:40%;height:20%;" src="${pageContext.request.contextPath}/images/app.png"/>
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
    <script type="text/javascript">
        $(function(){
            $(".footer ul li").hover(function(){
                $(this).addClass("change").siblings().removeClass("change");
            });
        });
    </script>

</body>
</html>