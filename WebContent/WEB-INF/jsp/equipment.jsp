<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <title>电力机房</title>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/findStyle.css">
</head>

<iframe frameborder="0" scrolling="no" src="${pageContext.request.contextPath}/title.jsp" style="width:100%;"></iframe>
<div class="content">
  <!--轮播图-->
  <div id="myCarousel"class="carousel slide">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="item active li_zi">
        <a href="javascript:;">
          <img src="${pageContext.request.contextPath}/images/slideshow2.jpg" alt="第一张图片"/>
        </a>
      </div>
      <div class="item li_zi">
        <a href="javascript:;">
          <img src="${pageContext.request.contextPath}/images/slideshow4.jpg" alt="第二张图片"/>
        </a>
      </div>
      <div class="item li_zi">
        <a href="javascript:;">
          <img src="${pageContext.request.contextPath}/images/slideshow1.jpg" alt="第三张图片"/>
        </a>
      </div>
    </div>
  </div>

  <div class="more">
	<div class="row">
    <div class="more_say col-xs-3 col-sm-4">
      <span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
      <span>更多应用</span>
    </div>
	<div class="more_say col-xs-3 col-sm-4">
      
    </div>
	<div class="col-xs-3 col-sm-4">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="输入应用名称搜索">
		<span class="input-group-btn">
           <button class="btn btn-default" type="button">Go!</button>
        </span>
      </div>
    </div>
  </div>
    
    
    <div class="row">
       
      
  <c:forEach items="${pageBean.list }" var="p">
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
        <div class="imgHere">
    	            <a href="${pageContext.request.contextPath}/data/findById.htm?equipmentId=${p.equipmentId}">
            			<img  src="${pageContext.request.contextPath}/${p.photo}" alt="...">
          			</a>
    	       </div>  
          
          <div class="caption">
            <h3>${p.name}</h3>
            <span class="label label-info">电力</span>
            <span class="label label-info">机房</span>
            <span class="label label-info">实时</span>
          </div>
        </div>
      </div>
    </c:forEach>
 </div>
 
<span class="pagination" style="display:block;width:110px;margin:0 auto;">
			<span class="di">第 ${pageBean.page}/${pageBean.totalPage}页</span>
		
			<c:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/equipment/findByPage.htm?page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/equipment/findByPage.htm?page=${pageBean.page-1}" class="previousPage">&nbsp;</a>
			</c:if>
			
			<c:forEach  var="i" begin="1" end="${pageBean.totalPage}">
			<c:choose>
			  <c:when test="pageBean.page != i"> 
				
					<a href="${ pageContext.request.contextPath }/equipment/findByPage.htm?page=${i}">${i}</a>
				</c:when>
				<c:otherwise> 
					<span class="currentPage">${i}</span>
				</c:otherwise>
			</c:choose>
			</c:forEach>
			
			<c:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/equipment/findByPage.htm?page=${pageBean.page+1}">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/equipment/findByPage.htm?page=${pageBean.totalPage}">&nbsp;</a>
			</c:if>
		
	</span>

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
<script>
  /*var l = $('.zan');
  alert(l.length);*/
  $(function() {
    $(window).resize(function () {                             //响应式
      var $height = $('.carousel-inner img').eq(0).height() ||
                    $('.carousel-inner img').eq(1).height() ||
                    $('.carousel-inner img').eq(2).height();
      $('.carousel-control').css('line-height', $height + 'px');
    });

    $('#myCarousel').carousel({interval: 13000});  //轮播图自动播放

      $('.zan').click(function() {
        $(this).toggleClass("zan1");
      });
  });
</script>
</body>
</html>