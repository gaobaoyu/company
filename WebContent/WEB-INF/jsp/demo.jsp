<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <title>${data.equipmentName}</title>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/highcharts.js"></script>
  <script src="${pageContext.request.contextPath}/js/dianlijiankong.js" type="text/javascript" ></script>
  <script src="https://img.hcharts.cn/highcharts/highcharts-more.js"></script>
  <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
  <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
  <script src="${pageContext.request.contextPath}/js/yihaojifang_shidu.js"></script>
  <script src="${pageContext.request.contextPath}/js/jiaodu.js"></script>
  <script src="${pageContext.request.contextPath}/js/yihaojifang_guangzhao.js"></script>
  <script src="${pageContext.request.contextPath}/js/zhendong.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dianlijiankong.css">
</head>
<body>
<iframe frameborder="0" scrolling="no" src="${pageContext.request.contextPath}/title.jsp" style="width:100%;"></iframe>
<div class="content">

  <div class="panel panel-default">
    <div class="panel-body">

      <div class="media">
        <div class="media-left">
          <p>${data.equipmentName}</p>
          <a href="javascript:;">
            <img class="media-object" src="${pageContext.request.contextPath}/images/index_more1.png" alt="电力监控">
          </a>
        </div>
        <div class="media-body">
          <div class="body_con">
            <p>行业：其他</p>
            <p>关联设备： 气象站 单元1逆变器交流测 单元1汇流箱1号</p>
            <p>创建时间：2016-03-03 10:05:18</p>
            
          </div>
        </div>
      </div>

    </div>
  </div>

  <div class="show">
    <span class="glyphicon glyphicon-stop"></span>
    <span>应用展示</span>
    <div class="data_show">
    <div id="container_left_wendu" style="max-width:800px;height:300px;float:left;">
      哎呀，你的网络有点问题
    </div>
    <div id="container_right_wendu" style="min-width:400px;height:300px;float:right;">
      哎呀，你的网络有点问题
    </div>     
    </div>
  </div>

  
  <div class="show">
    <div class="data_show">
    <div id="container_left_shidu" style="max-width:800px;height:300px;float:left;">
      哎呀，你的网络有点问题
    </div>
    <div id="container_right_shidu"style="min-width:400px;height:300px;float:right;">
      哎呀，你的网络有点问题
    </div>     
    </div>
  </div>

   <div class="show">
    <div class="data_show">
    <div id="container_left_guangzhao" style="max-width:800px;height:300px;float:left;">
      哎呀，你的网络有点问题
    </div>
    <div id="container_right_guangzhao"style="min-width:400px;height:300px;float:right;">
      哎呀，你的网络有点问题
    </div>    
    </div>
  </div>
  
     <div class="show">
    <div class="data_show">
    <div id="zhendong" style="max-width:800px;height:300px;float:left;">
      哎呀，你的网络有点问题
    </div>
    <div id="#"style="min-width:400px;height:300px;float:right;">

    </div>    
    </div>
  </div>
  
     <div class="show">
    <div class="data_show">
    <div id="jiaodu" style="max-width:800px;height:300px;float:left;">
      哎呀，你的网络有点问题
    </div>
    <div id="#"style="min-width:400px;height:300px;float:right;">

    </div>    
    </div>
  </div>

  <div id="information">
    <div class="container">
      <div class="row">

        <div class="col-md-8 info-left">
          <div class="container-fluid" style="padding:0;">
            <div class="row info-content">

                <div class="pingjia">
                  <span class="glyphicon glyphicon-stop"></span>
                  <span>用户评价</span>
                  <div class="data_show">
                    <form name="form">
                      <textarea id="msg"></textarea>
                    </form>
                    <div class="liuyanBtn">
                      <button id="btn"type="button" class="btn btn-primary">发表评论</button>
                    </div>
                    <div id="msg_c"></div>
                  </div>
              </div>

            </div>
          </div>
        </div>

        <div class="col-md-4 info-right hidden-xs hidden-sm">
          <blockquote>
            <h4><a href="">其他机房</a></h4>
          </blockquote>
          <div class="container-fluid">

		<c:forEach items="${list }" var="e">
            <div class="row">
              <div class="col-md-5 col-sm-5 col-xs-5" style="margin: 12px 0; padding: 0">
              <a href="${pageContext.request.contextPath}/data/findById.htm?equipmentId=${p.equipmentId}">
                <img src="${pageContext.request.contextPath}/${e.photo}" class="img-responsive" alt="">
              </a>
              </div>
              <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 0">
                <h3>${e.name}</h3>
                <p>tx莫 &nbsp&nbsp 2015 / 10 / 11</p>
              </div>
            </div>
         </c:forEach>
            
            </div>
          </div>
        </div>

      </div>
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
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
</body>
</html>