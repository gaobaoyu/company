<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/K_index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/init.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/data.css">
    <title>开发者中心</title>
</head>
<body>
    <iframe frameborder="0" scrolling="no" src="${pageContext.request.contextPath}/title.jsp" style="width:100%;height:13%;"></iframe>
    <div class="content">
        <div class="navs">
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="#public" onclick="showContent1()"><span style="color: #a94442"></span>详细信息</span></a></li>
             
                <button type="button" class="btn btn-info last"><a style="color: white;" href="#product_info" onclick="create()">+创建产品</a></button>
            </ul>
        </div>
        
        
       
        <div id="xieyi">
        <c:forEach items="${pageBean.list }" var="p">
            <div class="content_1">
             
                <div id="public">
               
                    <h3>${p.name }</h3>
                    <span><a href="${pageContext.request.contextPath}/data/find.htm?equipmentId=${p.equipmentId}"><button type="button" class="btn btn-success">环境监测</button></a></span>
                    <img src="${pageContext.request.contextPath}/images/edit.png" alt="" style="width:6%;height:6%;">
                    <img src="${pageContext.request.contextPath}/images/trash28.png" alt="" style="width:6%;height:6%;">
                    <p>设备接入方式：HTTP</p>
                    <p style="color: #80848e">创建时间：2016-09-27 09:02</p>
                    <table>
                        <tr>
                            <td rowspan="2" style="border-bottom: solid 1px darkgrey"><img style="width: 40%;height:10%;" src="${pageContext.request.contextPath}/images/usb29.png" alt=""></td>
                            <td style="border-right: solid 1px darkgrey"><span style="color: #a94442">1</span>台</td>
                            <td rowspan="2" style="border-bottom: solid 1px darkgrey"><img style="width: 40%;height:10%;" src="${pageContext.request.contextPath}/images/usb29.png" alt=""></td>
                            <td><span style="color: #a94442">1</span>个</td>
                        </tr>
                        <tr>
                            <td style="border-bottom: solid 1px darkgrey">接入设备</td>
                            <td style="border-bottom: solid 1px darkgrey">生成应用</td>
                        </tr>
                        <tr>
                            <td rowspan="2"><img style="width: 40%;height:10%;" src="${pageContext.request.contextPath}/images/usb29.png" alt=""></td>
                            <td style="border-right: solid 1px darkgrey"><span style="color: #a94442">1</span>个</td>
                            <td rowspan="2"><img style="width: 40%;height:10%;" src="${pageContext.request.contextPath}/images/usb29.png" alt=""></td>
                            <td><span style="color: #a94442">0</span>个</td>
                        </tr>
                        <tr>
                            <td>API Key</td>
                            <td>触发器数</td>
                        </tr>
                    </table>
                    
                </div>
                
                <div id="private">
                    <div class="product">
                        <img src="${pageContext.request.contextPath}/images/create.jpg" alt="">
                    </div>
                    <p style="margin:3%;">您还没创建产品，赶快创建产品吧</p>
                    <a href="#">创建产品></a>
                    
                </div>
            </div>
            </c:forEach>
        </div>
        
       
        
        <div id="product_info">
            
            <form action="">
                <table cellspacing="0" cellpadding="0" border="0">
                    <tr><td style="color: #a94442">产品信息</td></tr>
                    <tr>
                        <td>产品名称:</td>
                        <td><input type="text" name="username"/></td>
                    </tr>
                    <tr>
                        <td>产品行业：</td>
                        <td>
                            <select name="edulevel">
                            <!--<option value="-1">--请选择学历--</option>-->
                            <option value="0">智能家居</option>
                            <option value="1">车载设备</option>
                            <option value="2">可穿戴设备</option>
                            <option value="3">医疗保健</option>
                            <option value="4">智能玩具</option>
                            <option value="5">新能源</option>
                            <option value="6">运动监控</option>
                            <option value="7">智能教育</option>
                            <option value="8">环境监控</option>
                            <option value="9">办公设备</option>
                            <option value="10">其他</option>
                                </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           产品类别：
                        </td>
                        <td>
                            <select name="province" id="leibie" onchange="Change_1()">
                                <option>--请选择--</option>
                                <option value="A">家用电器</option>
                                <option value="B">办公设备</option>
                                <option value="C">穿戴设备</option>
                                <option value="D">母婴</option>
                                <option value="E">汽车用品</option>
                                <option value="F">智能玩具</option>
                                <option value="G">数码设备</option>
                                <option value="H">运动装备</option>
                                <option value="I">其他</option>
                            </select>
                            <select id="liebie_1" onchange="Change_2()">
                                <option>--请选择--</option>
                            </select>
                            <select id="liebie_2">
                                <option>--请选择--</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>当前产品进度：</td>
                        <td>
                            <input type="checkbox" name="hoby" value="reading"/>有创意想法
                            <input type="checkbox" name="hoby" value="movie"/>有产品原型
                            <input type="checkbox" name="hoby" value="shopping"/>有工程样机
                            <input type="checkbox" name="hoby" value="internet"/>已量产
                            <input type="checkbox" name="hoby" value="other"/>其他
                        </td>
                    </tr>
                    <tr>
                        <td>产品简介：</td>
                        <td><textarea rows="10" cols="40">rule 1</textarea></td>
                    </tr>
                    <tr><td style="color: #a94442">技术参数</td></tr>
                    <tr>
                        <td>操作系统：</td>
                        <td>
                            <input type="checkbox" name="hoby" value="reading"/>Linux
                            <input type="checkbox" name="hoby" value="movie"/>Android
                            <input type="checkbox" name="hoby" value="shopping"/>VxWorks
                            <input type="checkbox" name="hoby" value="internet"/> μC/OS
                            <input type="checkbox" name="hoby" value="internet"/> 无
                            <input type="checkbox" name="hoby" value="other"/>其他
                        </td>
                    </tr>
                    <tr>
                        <td>网络运营商：</td>
                        <td>
                            <input type="checkbox" name="hoby" value="reading"/>移动
                            <input type="checkbox" name="hoby" value="movie"/>电信
                            <input type="checkbox" name="hoby" value="shopping"/>联通
                            <input type="checkbox" name="hoby" value="other"/>其他
                        </td>
                    </tr>
                    <tr>
                        <td>设备接入方式：</td>
                        <td>
                            <input type="checkbox" name="hoby" value="reading"/>公开协议
                            <input type="checkbox" name="hoby" value="other"/>私有协议
                        </td>
                    </tr>
                    <tr>
                        <td>联网方式：</td>
                        <td>
                            <input type="checkbox" name="hoby" value="reading"/>wifi
                            <input type="checkbox" name="hoby" value="other"/>移动蜂窝网络
                        </td>
                    </tr>
                    <tr>
                        <td>模组选择：</td>
                        <td>
                            <input type="checkbox" name="hoby" value="reading"/>其他
                            <input type="checkbox" name="hoby" value="other"/> 安信可 ESP8266-XX系列
                            <input type="checkbox" name="hoby" value="other"/>  庆科 EMW3081

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="确定">
                            <input type="reset" value="取消"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="data">
          <!-- <div  id="container"></div>
            <div style="width:40%;height:40%;" id="container1"></div>
            <div style="width:40%;height:40%;" id="container2"></div>
            <div id="led">
                <span>LED ：</span><img id="switch" style="width:10%;height:3%;margin-top: 5%;"
                                        src="${pageContext.request.contextPath}/images/on.png" alt="" onclick="change_led()">
                <img id="deng" src="${pageContext.request.contextPath}/images/r12.png" style="width:20%;height:20%;margin-top: 5%;" alt="">
            </div>-->
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
</html>
