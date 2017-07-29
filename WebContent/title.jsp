<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>智能机房电力巡查系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-title.css">

<div class="logoDiv"><img src="${pageContext.request.contextPath}/images/yun.jpg"></div>
<div class="l">
    <a style="color: #4CBEFB" href="${pageContext.request.contextPath}/index.htm" target="mainPage">首页</a>
    <a href="${pageContext.request.contextPath}/equipment/findByPage.htm?page=1" target="mainPage">电力机房</a>
    <a href="${pageContext.request.contextPath}/overview.html" target="mainPage">开发文档</a>
    <a href="${pageContext.request.contextPath}/data/findByPage.htm?page=1" target="mainPage">开发者中心</a>


</div>
<c:choose>
   <c:when test="${empty existUser}"> 
     <div class="register"><a href="${pageContext.request.contextPath}/user/registerPage.htm"target="mainPage">注册</a></div>
	 <div class="login"><a href="${pageContext.request.contextPath}/user/loginPage.htm"target="mainPage">登录</a></div>
       
   </c:when>
   <c:otherwise>
    <div class="register"><a href="${pageContext.request.contextPath}/user/quit.htm" target="mainPage">退出</a></div>
	<div class="login"><a target="mainPage">${existUser.name}</a></div>

   </c:otherwise>
</c:choose>










